from pydantic import BaseModel

class SignUpModel(BaseModel):
  username: str
  email: str
  fullname: str
  password: str

class LoginModel(BaseModel):
  email: str
  password: str