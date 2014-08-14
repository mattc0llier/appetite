# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.create([{title: "Matt's house"}, { address: "39 packington street" }, 
					{ latitude: "51.536360" }, { longitude: "-0.096984" }])
venue.save