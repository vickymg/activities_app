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
