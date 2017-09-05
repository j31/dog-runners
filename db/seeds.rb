
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

#the not assigned runner
# USER ID 1
not_assigned = User.create(email: "not_assigned@wagon.com", role: "runner", password:"123456", password_confirmation: "123456")
puts "not_assigned is done."

# RUNNER ID 2
johannes = User.create(address: 'Charlottenstraße 2, 10969 Berlin', street: 'Charlottenstraße 2', city: "Berlin", email: "johannes@dogrunners.com", role: "runner", first_name: "Johannes", last_name: "Vaisfeld", password:"666666", password_confirmation: "123456", description: "Dog enthusiast")
johannes.photo_url = "http://airudite.weebly.com/uploads/1/0/5/3/105315715/johannes_orig.jpg"
puts "Johannes's done."

# RUNNER ID 3
laura = User.create(address: 'Oranienstraße 17, Berlin', street: 'Oranienstraße 17', city: "Berlin", email: "laura@wagon.com", role: "runner", first_name: "Laura", last_name: "Walde", password:"123456", password_confirmation: "123456", description: "Love to run and love dogs")
laura.photo_url = "https://3.bp.blogspot.com/-gPijdlX8OIU/VznOg-yGhgI/AAAAAAAAISQ/Opo_cshCHAYzm3_mwpsEHX5IieDMIARyQCLcB/s400/IMG_20160513_191456.jpg"
puts "Laura's done."

# RUNNER ID 4
michael = User.create(address: 'Kurfürstendamm 90, Berlin', street: 'Kurfürstendamm 90', city: "Berlin", email: "michael@wagon.com", role: "runner", first_name: "Michael", last_name: "Wiezcorek", password:"123456", password_confirmation: "123456", description: "passionate runner - even more fun with dogs")
michael.photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbXSTNW3mJAZ2d1ml-2P9uZ8oilHgix9CkclIpXt3lBHXibrbxhQ"
puts "Michael's done."

# RUNNER ID 5
alice = User.create(address: 'Simon Dach Straße 12, Berlin', street: 'Simon Dach Straße 12', city: "Berlin", email: "alice@wagon.com", role: "runner", first_name: "Alice", last_name: "Ducray", password:"123456", password_confirmation: "123456", description: "a home without a dog is just a house")
alice.photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3cBPW0B5WJ1sp_B976AmON5DMWJjW-o1kIVm_vYTP9dd0kjQg"
puts "Alice's done."

# OWNER ID 6
john = User.create(address: 'Charlottenstraße 2, 10969 Berlin', street: 'Charlottenstraße 2', city: "Berlin", email: "john@dr.com", role: "owner", first_name: "John", last_name: "Fish", password:"111111", password_confirmation: "111111", description: "Dog Lover!")
john.photo_url = "https://105315715-167216060926751446.preview.editmysite.com/uploads/1/0/5/3/105315715/john-orig_orig.jpg"
puts "Johns done."
puts "Now some dogs for John."

#2 dogs
new_dog1 = Dog.new(user: john,
  name: "Victor",
  description: "Sweetest dog on earth",
  weight: 12,
  age: 8,
  breed: "Golden Retriever")
new_dog1.save!
new_dog1.photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSBDLkh4nnGjtDAckN5AeXteua_mlB2JieNMpYoU0gdpXTmqiZkA"

new_dog2 = Dog.new(user: john,
  name: "Nala",
  description: "Super-cool dog.  Loves to run!",
  weight: 8,
  age: 5,
  breed: "Greyhound + Terrier")
new_dog2.save!
new_dog2.photo_url = "http://airudite.weebly.com/uploads/1/0/5/3/105315715/nala2_orig.jpg"

puts "Here are the dogs. Last but not least some runs for Snoopy"
# 3 runs for snoopy with different runners
Run.create!(user: john,
  note: "great run",
  dog_id: new_dog1.id,
  park_id: 1,
  status: "ended",
  duration: 20,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: 20,
  note: "<div style='background-color:#333;'><a id='ltw_home_url' href='https://locatoweb.com'>LocaToWeb - Real time GPS tracking</a><iframe id='ltw_embed_frame' frameborder='0' style='width:100%;height:600px;border-top:1px solid #000;'></iframe></div><script>var ltwtrackurl='single/1249113435';</script><script src='//locatoweb.azureedge.net/scripts/embed-1.1.3.min.js'></script>",
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: laura,
  note: "awesome run",
  dog_id: new_dog1.id,
  status: "ended",
  duration: 10,
  park_id: 2,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: 10,
  note: "<div style='background-color:#333;'><a id='ltw_home_url' href='https://locatoweb.com'>LocaToWeb - Real time GPS tracking</a><iframe id='ltw_embed_frame' frameborder='0' style='width:100%;height:600px;border-top:1px solid #000;'></iframe></div><script>var ltwtrackurl='single/1257113437';</script><script src='//locatoweb.azureedge.net/scripts/embed-1.1.3.min.js'></script>",
  appointment: Date.new(2017, 8, rand(26..30)))

Run.create!(user: alice,
  note: "best run",
  dog_id: new_dog1.id,
  status: "ended",
  duration: 30,
  park_id: 3,
  address: "Rudi-Dutschke-Straße 26, Berlin",
  price: 15,
  note: "<div style='background-color:#333;'><a id='ltw_home_url' href='https://locatoweb.com'>LocaToWeb - Real time GPS tracking</a><iframe id='ltw_embed_frame' frameborder='0' style='width:100%;height:600px;border-top:1px solid #000;'></iframe></div><script>var ltwtrackurl='single/1258113438';</script><script src='//locatoweb.azureedge.net/scripts/embed-1.1.3.min.js'></script>",
  appointment: Date.new(2017, 8, rand(26..30)))

puts "Everything done"
