# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

members = [
  "Joe Bloggs",
  "Rachel Smith",
  "Jenny Ross",
  "Ben Adams",
  "James White",
  "David Brown"
]

members.each do |name|
  Member.create( name: name )
end


Member.find(1).activities.create(description: 'Ran 26 miles', name: 'Running')
Member.find(1).activities.create(description: 'Cycled 50 miles to Brighton', name: 'Cycling')

Member.find(2).activities.create(description: 'Ran 3 miles to help with gardening in Islington', name: 'Running')
Member.find(2).activities.create(description: 'Ran 5 miles to meet Jean', name: 'Running')

Member.find(3).activities.create(description: 'Ran 22 miles in Man v Horse', name: 'Running')
Member.find(3).activities.create(description: 'Kayaked down the Thames', name: 'Kayaking')
Member.find(3).activities.create(description: 'Swam the Channel', name: 'Swimming')
