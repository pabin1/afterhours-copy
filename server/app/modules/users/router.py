from fastapi import APIRouter, HTTPException
from app.modules.users.service import service
from app.modules.users.models import UserModel, UserCollection

router = APIRouter()

@router.get("/")
async def read_users(
  status_code = 200,
  response_model=UserCollection,
):
  return await service.get_users()

@router.post("/add")
async def add_user(user: UserModel, status_code = 201):
  id = await service.add_user(user)
  if id:
    return {"id": id}
  else:
    raise HTTPException(status_code=409, detail="User already exists")