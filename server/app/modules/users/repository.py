import asyncio
from app.database import database
from bson.json_util import dumps, loads
from app.modules.users.models import UserModel

class UserRepository:
  def __init__(self):
    self.collection = database.get_collection("users")
  
  async def get_all(self):
    cursor = self.collection.find()
    return await cursor.to_list(50)

  # TODO
  def add(self, user: UserModel):
    return None

repository = UserRepository()