# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

List.delete_all
Product.delete_all

list = List.create(
  id: 1,
  username: 'testaccount',
  password_digest: 'jkhaddsajkfhsf',
  image: 'http://missgeeky.com/wp-content/uploads/2014/10/mc.jpg',
  title: 'Melinda & Cristiano',
  description: "Yay, we're getting married!"
)

Product.create([
  { name: "PlayStation 4",
    price: 32986,
    description: "PlayStation 4 redefines rich and immersive gameplay with powerful graphics and speed, intelligent personalisation, deeply integrated social capabilities, and innovative second-screen features
",
    image: "http://icons.iconarchive.com/icons/prepaidgamecards/gaming-gadgets/256/PlayStation-4-icon.png",
    position: 1,
    list: list
  }
])

list = List.create(
  id: 2,
  username: 'another_testaccount',
  password_digest: 'hkasdfajksdfkajs',
  image: 'http://images.intouchweekly.com/uploads/posts/image/42278/brad-pitt-angelina-jolie-marriage-wedding.jpg?crop=top&fit=clip&h=500&w=698',
  title: 'Brad & Angelina',
  description: "Omg, we're like totally in love and getting like married."
)
