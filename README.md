# Lemur
A basic social network Rails application that demonstrates fundamental CRUD principles. Users can sign up, post status updates and follow their friends, much like Twitter or Facebook.
### How to install this project
Clone the repository to your local machine
```sh
cd apps
git clone https://github.com/jacobtarr/lemur.git
cd lemur
```
Install the necessary dependencies for Rails
```sh
bundle install --without production
bundle exec rake db:migrate
```
Start the server
```sh
rails s
```
