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
Park.destroy_all

puts "Destroyed old data."


p = Park.new(
  name: "Volkspark Friedrichshain",
  city: "Berlin",
  description: "Landscaped green space with ponds.  Meet your runner at Märchenbrunnen.",
  address: "Märchenbrunnen, Am Friedrichshain, 10249 Berlin",
  latitude: 52.531371,
  longitude: 13.3969573)
  p.save!
  p.photo_url = "http://www.top10berlin.de/sites/top10berlin.de/files/location/mainimages/2014/05/26/fullsize_volkspark_friedrichshain_redaktion1.jpg"
  p.save!

p = Park.new(
  name: "Volkspark Humbolthain",
  city: "Berlin",
  description: "Landscaped green space with hills.  Meet your runner at the SW corner of the park.",
  address: "Brunnenstraße, 13357 Berlin",
  latitude: 52.5454737,
  longitude: 13.3851243)
  p.save!
  p.photo_url = "https://www.berlin.de/binaries/asset/image_assets/921045/source/1433850648/667x500/"
  p.save!

p = Park.new(
  name: "Mauer Park",
  city: "Berlin",
  description: "Mauerpark is a public linear park in Berlin's Prenzlauer Berg district.  Meet your runner at the Bernauer Str. steps.",
  address: "Gleimstraße 55, 10437 Berlin",
  latitude: 52.540912,
  longitude: 13.4022573)
  p.save!
  p.photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Mauerpark_1979.jpg/1200px-Mauerpark_1979.jpg"
  p.save!

puts "Done with Parks."



puts "Now I'll make some users..."


#create 9 users
not_assigned = User.create(email: "not_assigned@wagon.com", role: "runner", password:"123456", password_confirmation: "123456")
puts "not_assigned is done."

peter = User.create(address: 'Rudi-Dutschke-Straße 26, Berlin', street: 'Rudi-Dutschke-Straße 26', city: "Berlin", email: "peter@wagon.com", role: "runner", first_name: "Peter", last_name: "Griffin", password:"123456", password_confirmation: "123456", description: "Dog enthusiast")
peter.photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/PeterYarrowByPhilKonstantin.jpg/220px-PeterYarrowByPhilKonstantin.jpg"
puts "Peter's done."

stewie = User.create(address: 'Rudi-Dutschke-Straße 26, Berlin', street: 'Rudi-Dutschke-Straße 26', city: "Berlin", email: "stewie@wagon.com", role: "owner", first_name: "Stewie", last_name: "Smith", password:"123456", password_confirmation: "123456", description: "Dog visionaire")
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
  park_id: 1,
  status: "pending",
  duration: 20,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: peter,
  note: "awesome run",
  dog_id: new_dog.id,
  status: "ended",
  duration: 10,
  park_id: 2,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: peter,
  note: "best run",
  dog_id: new_dog.id,
  status: "pending",
  duration: 30,
  park_id: 3,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: rand(5..25),
  appointment: Date.new(2017, 8, rand(26..30)))

