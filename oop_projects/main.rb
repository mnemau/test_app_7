require_relative 'crud'

# $LOAD_PATH << "."
# requre 'crud'

users = [
  { username: "machur", password: "password1" },
  { username: "mikita", password: "password2" },
  { username: "jack", password: "password3" },
  { username: "jhonsnow", password: "password4" },
  { username: "heisenberg", password: "password5" },
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users