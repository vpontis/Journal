namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin User", email: "admin@gmail.com",
                        password: "passpass", password_confirmation: "passpass", 
                        admin:true)
    User.create!(name: "Example user", email: "vpontis@gmail.com", 
                password: "passpass", password_confirmation: "passpass")
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      password = "password"
      User.create!(name: name, email: email,
                password: password, password_confirmation: password)
    end
  end
end
