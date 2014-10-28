# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

reviews = Review.create([{ landlord: 'Rosalinda Cruz -- Kind of a monster. Does not own a computer or cell phone so communication is difficult.', building: 'LaFayette Park Towers -- Nice amenities, but not great neighbors.', unit: '1br1ba -- Great apartment!!', area: 'Koreatown -- A bit too crowded for my taste.'}, { landlord: 'PAC Properties -- Efficient, but too corporate. Quality not their top priority', building: '5002 -- Ok. Things break a lot, and the halls smell weird.', unit: '2br2ba -- Great apartment. Wood floors. Only problem is that the kitchen is small', area: 'North Hollywood -- Nice, but a little boring.'}])