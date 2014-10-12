# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

List.delete_all
Product.delete_all
Donation.delete_all

list = List.create(
  id: 1,
  username: 'test@test.com',
  password: 'test',
  password_confirmation: 'test',
  image: 'http://missgeeky.com/wp-content/uploads/2014/10/mc.jpg',
  title: 'Melinda & Cristiano',
  description: "Yay, we're getting married!"
)

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

list = List.create(
  id: 6,
  username: 'the_obamams_testaccount',
  password_digest: 'mnadioafdjjk',
  image: 'http://uk.eonline.com/resize/500/500/eol_images/Entire_Site/2013119/rs_300x300-131209084538-600.michelle-obama-barack.ls.12913.jpg',
  title: 'Barack & Michelle',
  description: "Aren't we cute!"
)

Product.create([
  { name: "PlayStation 4",
    price: 32986,
    description: "PlayStation 4 redefines rich and immersive gameplay with powerful graphics and speed, intelligent personalisation, deeply integrated social capabilities, and innovative second-screen features
",
    image: "http://icons.iconarchive.com/icons/prepaidgamecards/gaming-gadgets/256/PlayStation-4-icon.png",
    position: 1,
    list_id: 1
  }
])

Product.create([
  { name: "Wahl 2 Slice Toaster",
    price: 1399,
    description: "A great little toaster, cheap and cheerful, it does what it says on the box, it makes toast!!! Obviously not full of the features like the expensive ones, but hey toast is toast.",
    image: "http://ecx.images-amazon.com/images/I/51l1aqA8bjL._SL1500_.jpg",
    position: 1,
    list_id: 2
  }
])

Product.create([
  { name: "Wahl 2 Slice Toaster",
    price: 1399,
    description: "A great little toaster, cheap and cheerful, it does what it says on the box, it makes toast!!! Obviously not full of the features like the expensive ones, but hey toast is toast.",
    image: "http://ecx.images-amazon.com/images/I/51l1aqA8bjL._SL1500_.jpg",
    position: 3,
    list_id: 1
  }
])

Product.create([
  { name: "Tefal Intensium 28 cm Stirfry",
    price: 1650,
    description: "Tefal has invented a revolutionery new coating that last's up to 2x longer than most other non-stick cookware brands. This Intensium range comes with 9 layers of non-stick which possesses superior durability and resistant performance making this coating the most durable.",
    image: "http://ecx.images-amazon.com/images/I/71pgyOY77zL._SL1500_.jpg",
    position: 2,
    list_id: 1
  }
])

Product.create([
  { name: "Samsung UE60H6240 60-inch 1080p",
    price: 123200,
    description: "Enjoy a faster and easier Smart TV experience, never miss your favourite shows and surround yourself with the action - with the huge screen 60 Samsung H6240 it's as good as being there - especially when the nation's favourite 3D experience5 can bring a new dimension to your favourite programmes.",
    image: "http://ecx.images-amazon.com/images/I/91vYZx2MwxL._SL1500_.jpg",
    position: 4,
    list_id: 1
  }
])
