import abc
import enum
from typing import Tuple, Dict, Any, Union, List, AsyncIterator, Type

import rich.progress

from aura.utils.console import AuraIndefiniteBarColumn

__all__ = ["AuraDriver", "AuraIdentifier", "AuraDomain"]


class AuraDomain(str, enum.Enum):
    """Represents a config domain inside Aura."""

    GLOBAL = "GLOBAL"       # System-wide settings
    AI = "AI"               # AI models, configs
    SIMULATION = "SIM"      # Simulation configs & runs
    QUANTUM = "QUANTUM"     # Quantum sheets/circuits
    DATAHUB = "DATAHUB"     # Imported data / CSV / XLSL / streams
    USER = "USER"           # Per-user context
    PROJECT = "PROJECT"     # Specific project state

    @classmethod
    def get_pkey_info(
        cls, domain: Union[str, "AuraDomain"], custom_group_data: Dict[str, int]
    ) -> Tuple[int, bool]:
        """
        Get primary key length for the given domain,
        and whether or not it is a custom domain.
        """
        try:
            domain_obj = cls(domain)
        except ValueError:
            return custom_group_data[domain], True
        else:
            return _DOMAIN_PKEY_COUNTS[domain_obj], False


# default primary key depth for each Aura domain
_DOMAIN_PKEY_COUNTS = {
    AuraDomain.GLOBAL: 0,
    AuraDomain.AI: 1,
    AuraDomain.SIMULATION: 1,
    AuraDomain.QUANTUM: 1,
    AuraDomain.DATAHUB: 1,
    AuraDomain.USER: 1,
    AuraDomain.PROJECT: 2,
}


class AuraIdentifier:
    """Identifier object linking Aura cogs/drivers to stored values."""

    def __init__(
        self,
        module_name: str,
        uuid: str,
        domain: str,
        primary_key: Tuple[str, ...],
        identifiers: Tuple[str, ...],
        primary_key_len: int,
        is_custom: bool = False,
    ):
        self._module_name = module_name
        self._uuid = uuid
        self._domain = domain
        self._primary_key = primary_key
        self._identifiers = identifiers
        self.primary_key_len = primary_key_len
        self._is_custom = is_custom

    @property
    def module_name(self) -> str:
        return self._module_name

    @property
    def uuid(self) -> str:
        return self._uuid

    @property
    def domain(self) -> str:
        return self._domain

    @property
    def primary_key(self) -> Tuple[str, ...]:
        return self._primary_key

    @property
    def identifiers(self) -> Tuple[str, ...]:
        return self._identifiers

    @property
    def is_custom(self) -> bool:
        return self._is_custom

    def __repr__(self) -> str:
        return (
            f"<AuraIdentifier module={self.module_name} uuid={self.uuid} domain={self.domain} "
            f"primary_key={self.primary_key} identifiers={self.identifiers}>"
        )

    def get_child(self, *keys: str) -> "AuraIdentifier":
        if not all(isinstance(i, str) for i in keys):
            raise ValueError("Keys must be strings.")

        primary_keys = self.primary_key
        identifiers = self.identifiers
        num_missing = self.primary_key_len - len(self.primary_key)
        if num_missing > 0:
            primary_keys += keys[:num_missing]
        if len(keys) > num_missing:
            identifiers += keys[num_missing:]

        return AuraIdentifier(
            self.module_name,
            self.uuid,
            self.domain,
            primary_keys,
            identifiers,
            self.primary_key_len,
            self.is_custom,
        )

    def add_identifier(self, *identifier: str) -> "AuraIdentifier":
        if not all(isinstance(i, str) for i in identifier):
            raise ValueError("Identifiers must be strings.")

        return AuraIdentifier(
            self.module_name,
            self.uuid,
            self.domain,
            self.primary_key,
            self.identifiers + identifier,
            self.primary_key_len,
            self.is_custom,
        )

    def to_tuple(self) -> Tuple[str, ...]:
        return tuple(
            filter(
                None,
                (self.module_name, self.uuid, self.domain, *self.primary_key, *self.identifiers),
            )
        )


class AuraDriver(abc.ABC):
    """
    Abstract Base Class for Aura storage/config drivers.
    """

    def __init__(self, module_name: str, identifier: str, **kwargs):
        self.module_name = module_name
        self.unique_module_identifier = identifier

    @classmethod
    @abc.abstractmethod
    async def initialize(cls, **storage_details) -> None:
        """Initialize this driver."""
        raise NotImplementedError

    @classmethod
    @abc.abstractmethod
    async def teardown(cls) -> None:
        """Tear down this driver."""
        raise NotImplementedError

    @staticmethod
    @abc.abstractmethod
    def get_config_details() -> Dict[str, Any]:
        """Ask users for additional config info for this driver."""
        raise NotImplementedError

    @abc.abstractmethod
    async def get(self, identifier_data: AuraIdentifier) -> Any:
        """Retrieve a stored value."""
        raise NotImplementedError

    @abc.abstractmethod
    async def set(self, identifier_data: AuraIdentifier, value=None) -> None:
        """Store a value."""
        raise NotImplementedError

    @abc.abstractmethod
    async def clear(self, identifier_data: AuraIdentifier) -> None:
        """Delete a stored value."""
        raise NotImplementedError

    @classmethod
    @abc.abstractmethod
    def aiter_modules(cls) -> AsyncIterator[Tuple[str, str]]:
        """Iterate through stored modules."""
        raise NotImplementedError

    # Migration, export, import methods can be lifted/adapted from your base code...
