from typing import Optional
from pydantic import BaseModel, Field
from app.models import PyObjectId

# TODO
class UserModel(BaseModel):
  id: Optional[PyObjectId] = Field(alias="_id", default=None)
  username: str = Field(...)
  email: str = Field(...)

  model_config = {
    "json_schema_extra": {
      "examples": [
        {
          "username": "test",
          "email": "test@gmail.com"
        }
      ]
    }
  }

class UpdateUserModel(BaseModel):
  email: Optional[str]
  password: Optional[str]