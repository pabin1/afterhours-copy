from app.database import database
from app.modules.users.models import UserModel

# TODO
class UserRepository:
  def __init__(self):
    self.repository = database.get_collection("users")
  
  def get_all(self):
    return None

  def add(self, user: UserModel):
    return None

repository = UserRepository()