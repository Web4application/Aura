from fastapi import APIRouter, Depends
from sqlalchemy.future import select
from sqlalchemy.ext.asyncio import AsyncSession
from aura_core.db import get_db
from aura_core.models import Device

router = APIRouter()

@router.post("/register")
async def register_device(owner_id: int, name: str, db: AsyncSession = Depends(get_db)):
    device = Device(owner_id=owner_id, name=name, status="online")
    db.add(device)
    await db.commit()
    return {"msg": "Device registered", "device": {"id": device.id, "name": device.name}}

@router.post("/heartbeat")
async def device_heartbeat(device_id: int, db: AsyncSession = Depends(get_db)):
    result = await db.execute(select(Device).filter(Device.id == device_id))
    device = result.scalar()
    if not device:
        return {"error": "Device not found"}
    device.status = "online"
    await db.commit()
    return {"msg": f"Heartbeat received from {device.name}"}
