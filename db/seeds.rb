User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar")

4.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
password = "123456"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)
end