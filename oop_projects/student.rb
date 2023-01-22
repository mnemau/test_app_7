require_relative 'crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :username

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(firstname, lastname, username, email, password)
      @first_name = firstname
      @last_name = lastname
      @username = username
      @email = email
      @password = password
  end

  def to_s
      "First name: #{@first_name} Last name: #{last_name} Username: #{@username} Email adress: #{@username}"
  end
end

mikita = Student.new("Mikita", "Nemau", "dobrynanikitich", "dobrynanikitich@gmail.com", "Password")
tanya = Student.new("Tanya", "Bakhmatovich", "tb", "tb@gmail.com", "password1")

hashed_password = mikita.create_hash_digest(mikita.password)
p hashed_password