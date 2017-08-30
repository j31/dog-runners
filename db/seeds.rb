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
not_assigned = User.create(email: "not_assigned@wagon.com", role: "runner", password:"123456", password_confirmation: "123456")
puts "not_assigned is done."

peter = User.create(email: "peter@wagon.com", role: "runner", first_name: "Peter", last_name: "Griffin", password:"123456", password_confirmation: "123456", description: "Dog enthusiast")
peter.photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/PeterYarrowByPhilKonstantin.jpg/220px-PeterYarrowByPhilKonstantin.jpg"
puts "Peter's done."

stewie = User.create(email: "stewie@wagon.com", role: "owner", first_name: "Stewie", last_name: "Smith", password:"123456", password_confirmation: "123456", description: "Dog visionaire")
stewie.photo_url = "http://www.rockstart.com/wp-content/uploads/2012/06/bas-300x300.jpg"
puts "Stewie's all set."

new_dog = Dog.new(user: stewie,
  name: "Miley",
  description: "sweet little thing",
  weight: 10,
  age: 2,
  breed: "Beagle")
new_dog.save!
new_dog.photo_url = "http://cdn2-www.dogtime.com/assets/uploads/gallery/beagle-puppies/beagle-puppy-4.jpg"

Run.create!(user: peter,
  note: "great run",
  dog_id: new_dog.id,
  status: "pending",
  duration: 20,
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: peter,
  note: "awesome run",
  dog_id: new_dog.id,
  status: "ended",
  duration: 10,
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: peter,
  note: "best run",
  dog_id: new_dog.id,
  status: "pending",
  duration: 30,
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

