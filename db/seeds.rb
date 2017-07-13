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
  breed.update(image: "https://upload.wikimedia.org/wikipedia/commons/b/bd/Cairn_Terrier.jpg")
end
