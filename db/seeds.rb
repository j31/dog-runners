# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

a_address = ["Friedrichstraße 207, Berlin",
                "Leipziger Pl. 12-13, Berlin",
                "Alte Potsdamer Str. 7, Berlin",
                "Schwedenstraße 9B, 13359 Berlin",
                "Linienstraße 132, 10115 Berlin",
                "Hauptstraße 133, 10827 Berlin",
                "Hermannstraße 149, 12051 Berlin",
                "Schwedenstraße 20, 13359 Berlin",
                "Linienstraße 180, 10115 Berlin",
                "Hauptstraße 211, 10827 Berlin",
                "Mitte, Berlin",
                "Friedrichsein, Berlin",
                "Torstraße 125, 10119 Berlin",
                "Rosenthaler Str. 43-45, 10178 Berlin",
                "Marzan, Berlin",
                "Mehringdamm 32, 10961 Berlin",
                "Greifswalder Str. 32, 10405 Berlin",
                "Wilmersdorf, Berlin",
                "Hermannstraße 321, 12051 Berlin",
                "Wilmersdorfer Str. 53/54, 10627 Berlin",
                "Wittenbergpl. 4, 10789 Berlin",
                "Karl-Marx-Straße 119, 12043 Berlin",
                "Friedrich-Ebert-Straße 95, 14467 Potsdam",
                "Zeppelinstraße 146, 14471 Potsdam",
                "Potsdamer Str. 176, 14469 Potsdam",
                "159 Rue Montmartre, 75002 Paris, France",
                "80 Boulevard Diderot, 75012 Paris, France",
                "112B Rue de Rennes, 75006 Paris, France",
                "7 Fulham Broadway, Fulham, London SW6 1AA, UK",
                "304 Kilburn High Road, London, Kilburn NW6 2DB, United Kingdom",
                "11A Islington High St, London N1 9LQ, UK",
                "Unit 9/14 Bull La, London N18 1SX, United Kingdom",
                "Lindenthaler Str. 66, 04155 Leipzig",
                "Jahnallee 31, 04109 Leipzig",
                "Karl-Liebknecht-Straße 59, 04275 Leipzig"]

dog_breed = ["Beagle", "Rottweiler", "Labrador", "Border Collie", "Schäferhund", "Mix", "Engligh Setter", "Terrier"]

puts "Beginning seeding.  Hang in there, this takes a while..."

User.destroy_all
Dog.destroy_all
Run.destroy_all

puts "Destroyed old data.  Now I'll make some users..."

#create 9 users
peter = User.create(email: "peter@wagon.com", first_name: "Peter", last_name: "Griffin", password:"123456", password_confirmation: "123456", description: "Dog enthusiast", address: a_address.sample)
peter.photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/PeterYarrowByPhilKonstantin.jpg/220px-PeterYarrowByPhilKonstantin.jpg"
puts "Peter's done."

stewie = User.create(email: "stewie@wagon.com", first_name: "Stewie", last_name: "Smith", password:"123456", password_confirmation: "123456", description: "Dog visionaire", address: a_address.sample)
stewie.photo_url = "http://www.rockstart.com/wp-content/uploads/2012/06/bas-300x300.jpg"
puts "Stewie's all set."

meg = User.create(email: "meg@wagon.com", first_name: "Meg", last_name: "Jones", password:"123456", password_confirmation: "123456", description: "Dog Beginner", address: a_address.sample)
meg.photo_url = "https://i.ytimg.com/vi/8bzreh78Sgo/maxresdefault.jpg"

tom = User.create(email: "tom@wagon.com", first_name: "Tom", last_name: "Lennon", password:"123456", password_confirmation: "123456", description: "Just getting into this dog stuff", address: a_address.sample)
tom.photo_url = "https://pbs.twimg.com/media/BcINeMVCIAABeWd.jpg"

richard = User.create(email: "richard@wagon.com", first_name: "Richard", last_name: "McCartney", password:"123456", password_confirmation: "123456", description: "My middle name is Dog", address: a_address.sample)
richard.photo_url = "http://vignette3.wikia.nocookie.net/althistory/images/7/74/Recent-portraits-random-people-in-random-places_11.jpg/revision/latest?cb=20141209232111"
puts "Same goes for Meg, Tom and Richard."

harry = User.create(email: "harry@wagon.com", first_name: "Harry", last_name: "Jackson", password:"123456", password_confirmation: "123456", description: "I live for doggies!", address: a_address.sample)
harry.photo_url = "https://www.demilked.com/magazine/wp-content/uploads/2015/10/random-people-portraits-reimagine-simpsons-valerie-zaremska-13.jpg"

paul = User.create(email: "paul@wagon.com", first_name: "Paul", last_name: "Prince", password:"123456", password_confirmation: "123456", description: "Dogging on about dogs...", address: a_address.sample)
paul.photo_url = "https://pbs.twimg.com/profile_images/496104994152906754/eP3c0xiB_400x400.jpeg"

ringo = User.create(email: "ringo@wagon.com", first_name: "Ringo", last_name: "McEnroe", password:"123456", password_confirmation: "123456", description: "To dog, or not to dog.", address: a_address.sample)
ringo.photo_url = "https://yt3.ggpht.com/-donKzgz_HnU/AAAAAAAAAAI/AAAAAAAAAAA/yOyWWOCCXwM/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"
puts "And Harry, Paul and Ringo..."

john = User.create(email: "john@wagon.com", first_name: "John", last_name: "Lendle", password:"123456", password_confirmation: "123456", description: "I love dogs!", address: a_address.sample)
john.photo_url = "http://www.sawtagadir.com/files/news/machahire/2016/1/google.jpg"
puts "Last, but not least, John's done."

puts "Created 9 users with photos."

sample_users = [peter, stewie, meg, tom, richard, harry, paul, ringo, john]

url = "http://lorempixel.com/400/200/animals"



puts "Creating a dog for each user..."

# create some drones per user
sample_users.each do |user|
    new_dog = Dog.new(user: user,
      name:Faker::Superhero.name,
      description: Faker::Superhero.power,
      weight: rand(5..50),
      age: rand(1..15),
      breed: dog_breed.sample)

    new_dog.save!
    new_dog.photo_url = url

  puts "Created #{user.first_name}'s dog."
end

puts "All done with dogs, onto runs..."

notes = ["Dog really enjoyed cooling off in the lake after the run",
            "10 km run, great fun",
            "Terrific run.",
            "Awesome run!",
            "Best running experience ever"
            ]

durations = [10, 20, 30]

Dog.all.each do |dog|
  Run.create!(user: sample_users.sample, note: notes.sample, dog_id: dog.id, status: rand(0..6), duration: durations.sample, price: rand(5..25), appointment: Date.new(2017, 8, rand(26..30)))
  Run.create!(user: sample_users.sample, note: notes.sample, dog_id: dog.id, status: rand(0..6), duration: durations.sample, price: rand(5..25), appointment: Date.new(2017, 8, rand(26..30)))
  Run.create!(user: sample_users.sample, note: notes.sample, dog_id: dog.id, status: rand(0..6), duration: durations.sample, price: rand(5..25), appointment: Date.new(2017, 8, rand(26..30)))
  Run.create!(user: sample_users.sample, note: notes.sample, dog_id: dog.id, status: rand(0..6), duration: durations.sample, price: rand(5..25), appointment: Date.new(2017, 8, rand(26..30)))
  Run.create!(user: sample_users.sample, note: notes.sample, dog_id: dog.id, status: rand(0..6), duration: durations.sample, price: rand(5..25), appointment: Date.new(2017, 8, rand(26..30)))
end

puts "finished creating runs. have fun with seed data"
