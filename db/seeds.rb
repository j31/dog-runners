# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dog.destroy_all
Run.destroy_all

puts "Destroyed old data.  Now I'll make some users..."

#create 9 users
peter = User.create(email: "peter@wagon.com", role: "runner", first_name: "Peter", last_name: "Griffin", password:"123456", password_confirmation: "123456", description: "Dog enthusiast")
peter.photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/PeterYarrowByPhilKonstantin.jpg/220px-PeterYarrowByPhilKonstantin.jpg"
puts "Peter's done."
