email = ENV["ADMIN_EMAIL"].dup
name =  ENV["USER"].dup
last = ENV["LASTNAME"].dup
password = ENV["ADMIN_PASS"].dup
admin = User.new(
  email: email,
  first_name: name, 
  last_name: last, 
  roles: ['admin'], 
  password: password,
  password_confirmation: password
)
admin.skip_confirmation!
admin.save!