# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#anything = Book.create([{ title: 'titles', isbn: '1234', creator: 'cool  kid' }])

#anything = [{ title: 'python rules', isbn: '1234', creator: 'star student'}, {title: 'C is Cool', isbn: '5678', creator: 'idiot nerd'}])

#anything = [{:title => 'Atlas Shrugged', :isbn => '123', :creator => 'Greg'}]

puts "started"
Book.create!(:title => "good to great", :isbn => "12345")
#Book.create(:title => "software as a service")
#Book.create(:title => "all quiet on the western front")
puts "done"