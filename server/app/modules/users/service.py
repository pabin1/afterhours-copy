from app.modules.users.repository import repository
from app.modules.users.models import UserModel

# TODO
class UserService:
  def __init__(self):
    self.repository = repository

  async def get_users(self):
    return await self.repository.get_all()

  def add_user(self, user: UserModel):
    return None

service = UserService()