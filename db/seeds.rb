User.create!(name:  "Jake Tarr",
			 username: "jake",
             email: "jtarr.rams@gmail.com",
             password:              "zelda3",
             password_confirmation: "zelda3",
             about_me: "I'm on Lemur. Check out my profile!",
             website: "jacobtarr.github.io",
             user_location: "Erie, PA",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  username = "example#{n+1}"
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  about_me = Faker::Lorem.sentence
  website = Faker::Internet.domain_name
  user_location = Faker::Address.city
  User.create!(name:  name,
               email: email,
               username: username,
               password:              password,
               password_confirmation: password,
               about_me: about_me,
               website: website,
               user_location: user_location)
end
