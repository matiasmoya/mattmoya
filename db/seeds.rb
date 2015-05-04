### Creates first user
user = User.find_or_create_by(email: "asd@asd.com") do |u|
  u.password = "asdqwe123"
  u.password_confirmation = "asdqwe123"
  puts "User #{u.email} has been created"
end
