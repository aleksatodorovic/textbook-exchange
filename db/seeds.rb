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


#Book.create(:title => "all quiet on the western front")
=begin
u1 = User.create(name: "Shrek", password: "Shreksplace", phone: "555-5555")
Book.create(title: "Swamp Living for Dummies", isbn: "9999999999", price: "10", user_id: u1.id)
Book.create(title: "The Ogre Scouts Handbook", isbn: "0000000000", price: "10", user_id: u1.id)

u2 = User.create(name: "Dr. Kurdia", password: "Shrek", phone: "011-0011")
Book.create(title: "Shrek the transcript of the movie", isbn: "?????????", price: "10", user_id: u2.id)
Book.create(title: "Shrek 2 the transcript of the movie", isbn: "?????????", price: "10", user_id: u2.id)
puts "done"
=end

u1 = User.create(name: "Seth Chefici")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/Pride ad Prejudice.jpg")), price: "19.99", title: "Pride and Prejudice", isbn: "9999999999", condition: "Mint", subject: "Fiction", description: "Great story about the great depression, I think. Please call me at 504-987-5433", user_id: u1.id)

u2 = User.create(name: "Bryant Tailor")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/Atlas Shrugged.jpg")), price: "13", title: "Atlas Shrugged", isbn: "34278438943", condition: "Mint", subject: "Mystery", description: "Never really read it. Please call me at 342-287-6623", user_id: u2.id)

u3 = User.create(name: "Byron Griffon")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/The Three Body Problem.jpg")), price: "75.50", title: "The Three Body Problem", isbn: "56276634981", condition: "Used, slightly torn", subject: "Sci-Fi", description: "Interesting read about aliens and science in general. Please call me at 239-911-5733", user_id: u3.id)

u4 = User.create(name: "Chelsea McGorden")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/Gone with the Wind.jpg")), price: ".50", title: "Gone with the Wind", isbn: "77278328993", condition: "Mint", subject: "Drama", description: "Pretty long love story. Please call me at 214-007-4313", user_id: u4.id)

u5 = User.create(name: "Leroy Salem")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/The Alchemist.jpg")), price: "37.82", title: "The Alchemist", isbn: "34238432743", condition: "Great", subject: "Fiction", description: "Has interesting insight into what a journey is and means. Please call me at 900-992-5413", user_id: u5.id)

u6 = User.create(name: "Richard Bransung")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/Fire and Fury.jpg")), price: "99.99", title: "Fire and Fury", isbn: "05498438882", condition: "Okay", subject: "Non-fiction", description: "Pretty much what goes on in the White House. Please call me at 114-907-3290", user_id: u6.id)

u7 = User.create(name: "Selena Fairchild")
Book.create(image: File.open(File.join(Rails.root, "/app/assets/images/How Not to be Wrong.jpg")), price: "19.99", title: "How Not to Be Wrong", isbn: "37483294223", condition: "Used", subject: "Non-fiction", description: "Great piece about mathematics and how it actually matters. Please call me at 200-318-8827", user_id: u7.id)
puts "done"