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
  username: 'test@test.com',
  password: 'test',
  password_confirmation: 'test',
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

Donation.create([
  { price: 9999,
    message: "So so so happy for you",
    twitter_id: "vikings",
    list_id: 1,
  }
])

Donation.create([
  { price: 5217,
    message: "couldnt buy you a sandbox",
    twitter_id: "paypaldev",
    list_id: 1,
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

list = List.create(
  id: 3,
  username: 'nph_testaccount',
  password_digest: 'qwertyupoe',
  image: 'http://uk.eonline.com/resize/500/500/eol_images/Entire_Site/201488/rs_300x300-140908055559-600.Neil-Patrick-Harris-David-Burtka-Wedding-JR-90814.jpg',
  title: 'Neil & David',
  description: "Our wedding's going to be, legen-dary!"
)

list = List.create(
  id: 4,
  username: 'emma_andrew_testaccount',
  password_digest: 'glatmourat3am',
  image: 'http://uk.eonline.com/resize/500/500/eol_images/Entire_Site/2014311/rs_300x300-140411173938-600.Emma-Stone-Andrew-Garfield-The-amazing-SpiderMan2-Premimere-Paris.ms.041114.jpg',
  title: 'Emma & Andrew',
  description: "Aren't we cute!"
)

list = List.create(
  id: 5,
  username: 'ellen_portia_testaccount',
  password_digest: 'poiuhbo',
  image: 'http://uk.eonline.com/resize/500/500/eol_images/Entire_Site/2012322/300.portia.ellen.cm.42212.jpg',
  title: 'Ellen & Portia',
  description: "Aren't we cute!"
)