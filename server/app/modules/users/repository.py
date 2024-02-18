from app.database import database
from app.modules.users.models import UserModel
from app.util import handle_object_id

class UserRepository:
  def __init__(self):
    self.collection = database.get_collection("users")
  
  async def get_all(self):
    cursor = self.collection.find()
    return list(map(lambda document: handle_object_id(document), await cursor.to_list(1000)))

  # TODO
  def add(self, user: UserModel):
    return None

repository = UserRepository()