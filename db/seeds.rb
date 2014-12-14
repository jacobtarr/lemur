# Users
User.create!(name:  "Jake Tarr",
			       username: "jake",
             email: "jtarr.rams@gmail.com",
             password:              "zelda3",
             password_confirmation: "zelda3",
             about_me: "I'm on Lemur. Check out my profile!",
             website: "jacobtarr.github.io",
             user_location: "Erie, PA",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

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
               user_location: user_location,
               activated: true,
               activated_at: Time.zone.now)
end

# Microposts
users = User.order(:created_at).take(6)
50.times do
  headline = Faker::Lorem.word
  date = Faker::Date.backward(14)
  location = Faker::Address.city
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(headline: headline,
                                              date: date,
                                              location: location,
                                              content: content) 
  }
end

# Following Relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }






