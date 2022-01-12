# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

actor1 = Actor.create({first_name: "Butterfree", last_name: "Catinahat", known_for: "The Imitation Game"})

actor2 = Actor.create({first_name: "Buffalo", last_name: "Custardpath", known_for: "Star Trek"})

actor3 = Actor.create({first_name: "Benadryl", last_name: "Slumbercatch", known_for: "August: Osage County"})

actor4 = Actor.create({first_name: "Benedoctor", last_name: "Strangebatch", known_for: "Doctor Strange"})

actor.save

10.times do
  Actor.create({first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title})
end