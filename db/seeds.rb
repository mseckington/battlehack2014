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
  image: 'https://farm4.staticflickr.com/3178/3018620815_0a16128a42_q.jpg',
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
