# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# doggies = Unirest.get("https://raw.githubusercontent.com/dariusk/corpora/master/data/animals/dogs.json").body["dogs"]

# doggies.each do |dog|
#   Breed.create(name: dog)
# end

Breed.all.each do |breed|
  breed.update(image: "https://vetstreet.brightspotcdn.com/dims4/default/d334045/2147483647/crop/0x0%2B0%2B0/resize/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2F66%2Fffb760a8b011e0a0d50050568d634f%2Ffile%2Flabradoodle-2-645mk070411.jpg")
end
