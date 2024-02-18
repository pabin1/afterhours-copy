from pydantic import BaseModel

class SignUpModel(BaseModel):
  email: str
  password: str

class LoginModel(BaseModel):
  email: str
  password: str