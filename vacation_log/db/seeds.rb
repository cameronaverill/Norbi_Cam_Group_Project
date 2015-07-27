# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.delete_all

cape = Event.create! name: 'Cape of Good Hope', date: "July 18, 2015", rating: 4, likes: 0
surfing = Event.create! name: "Surfing at Muizenberg", date: "July 25, 2015", rating: 4, likes: 0
shark = Event.create! name: 'Shark Cage Diving', date: "July 27, 2015", rating: 5

