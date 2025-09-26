from fastapi import APIRouter, Depends
from sqlalchemy.future import select
from sqlalchemy.ext.asyncio import AsyncSession
from aura_core.db import get_db
from aura_core.models import Service

router = APIRouter()

@router.post("/register")
async def register_service(name: str, type: str, endpoint: str, db: AsyncSession = Depends(get_db)):
    svc = Service(name=name, type=type, endpoint=endpoint, status="active")
    db.add(svc)
    await db.commit()
    return {"msg": "Service registered", "service": {"name": svc.name, "endpoint": svc.endpoint}}

@router.get("/list")
async def list_services(db: AsyncSession = Depends(get_db)):
    result = await db.execute(select(Service))
    services = result.scalars().all()
    return [{"name": s.name, "type": s.type, "endpoint": s.endpoint, "status": s.status} for s in services]
