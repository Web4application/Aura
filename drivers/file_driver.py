import json
import asyncio
from pathlib import Path
from typing import Dict, Any, Tuple, AsyncIterator

from aura.core.driver_base import AuraDriver, AuraIdentifier


class AuraFileDriver(AuraDriver):
    """
    JSON-based file storage driver for Aura.
    Stores each module's config in a {uuid}.json file inside a storage folder.
    """

    _storage_path: Path = None
    _lock = asyncio.Lock()

    @classmethod
    async def initialize(cls, storage_dir: str = "./aura_storage", **kwargs) -> None:
        cls._storage_path = Path(storage_dir)
        cls._storage_path.mkdir(parents=True, exist_ok=True)

    @classmethod
    async def teardown(cls) -> None:
        # Nothing fancy for teardown, just unlock.
        pass

    @staticmethod
    def get_config_details() -> Dict[str, Any]:
        return {"storage_dir": "./aura_storage"}

    def _file_for(self) -> Path:
        return self._storage_path / f"{self.unique_module_identifier}.json"

    async def _read_file(self) -> Dict[str, Any]:
        file_path = self._file_for()
        if not file_path.exists():
            return {}
        async with self._lock:
            return json.loads(file_path.read_text())

    async def _write_file(self, data: Dict[str, Any]) -> None:
        file_path = self._file_for()
        async with self._lock:
            file_path.write_text(json.dumps(data, indent=2))

    async def get(self, identifier_data: AuraIdentifier) -> Any:
        data = await self._read_file()
        key = identifier_data.to_tuple()
        node = data
        for k in key:
            if k not in node:
                raise KeyError(f"{k} not found in {identifier_data}")
            node = node[k]
        return node

    async def set(self, identifier_data: AuraIdentifier, value=None) -> None:
        data = await self._read_file()
        key = identifier_data.to_tuple()
        node = data
        for k in key[:-1]:
            node = node.setdefault(k, {})
        node[key[-1]] = value
        await self._write_file(data)

    async def clear(self, identifier_data: AuraIdentifier) -> None:
        data = await self._read_file()
        key = identifier_data.to_tuple()
        node = data
        for k in key[:-1]:
            if k not in node:
                return
            node = node[k]
        node.pop(key[-1], None)
        await self._write_file(data)

    @classmethod
    async def aiter_modules(cls) -> AsyncIterator[Tuple[str, str]]:
        for file in cls._storage_path.glob("*.json"):
            module_id = file.stem
            yield ("aura_module", module_id)
