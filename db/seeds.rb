User.create!(name:  "Vadim",
    email: "example@railstutorial.org",
    password:              "123456",
    password_confirmation: "123456",
    admin: true)

9.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "123456"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)
end