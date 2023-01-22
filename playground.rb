users = [
    { username: "machur", password: "password1" },
    { username: "mikita", password: "password2" },
    { username: "jack", password: "password3" },
    { username: "jhonsnow", password: "password4" },
    { username: "heisenberg", password: "password5" },
]

def auth_user(username, password, users_list)
    users_list.each do |user|
        if user[:username] == username && user[:password] == password
            return user
        end
    end
    "Credential where not correct"
end

puts "Welcome to the authentificator"
25.times { print "-" }
puts
puts "This program will take inout from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1

while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase

    break if input == "n"

    attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4