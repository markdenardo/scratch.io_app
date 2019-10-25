User.destroy_all
Item.destroy_all
Order.destroy_all
Post.destroy_all

5.times do
  User.create(name:Faker::Name.name, username: Faker::Games::SuperSmashBros.fighter, password_digest: "poop")
end

Item.create([
  {name:"Pong", date:1972, company:"Atari", description:"Pong is one of the earliest arcade video games. It is a table tennis sports game featuring simple two-dimensional graphics. The game was originally manufactured by Atari, which released it in 1972. Allan Alcorn created Pong as a training exercise assigned to him by Atari co-founder Nolan Bushnell.", image:"https://images-na.ssl-images-amazon.com/images/I/51HrAvTyiUL._QL40_SX400_.jpg"},

  {name:"Space Invaders", date:1978, company:"Atari", description:"Space Invaders is a Japanese shooting video game released in 1978 by Taito. It was developed by Tomohiro Nishikado, who was inspired by other media: Breakout, The War of the Worlds, and Star Wars.", image:"https://atariage.com/2600/boxes/b_SpaceInvaders_Color_front.jpg"},

  {name:"Breakout", date:1976, company:"Atari", description:"Breakout is an arcade game developed and published by Atari, Inc., and released on May 13, 1976. It was conceptualized by Nolan Bushnell and Steve Bristow, influenced by the seminal 1972 Atari arcade game Pong, and built by Steve Wozniak, aided by Steve Jobs.", image:"https://i.pinimg.com/originals/27/99/52/279952a8bca6601bae750fe8b5d6920c.jpg"},

  {name:"Spy Hunter", date:1983, company:"Midway Games", description:"Spy Hunter is an overhead view, vehicular combat game developed by Bally Midway and released in arcades in 1983. The game draws inspiration from the James Bond films and was originally supposed to carry the James Bond license.", image:"https://cdn11.bigcommerce.com/s-m92i69d8x0/images/stencil/1280x1775/products/9146/11414/Spy_Hunter__46538.1506496056.jpg?c=2&imbypass=on"},

  {name:"Bubble Bobble", date:1986, company:"Taito", description:"Bubble Bobble is a platform game by Taito, first released in arcades in 1986 and later ported to home systems by Toei Company.", image:"https://gamespot1.cbsistatic.com/uploads/scale_medium/mig/1/2/7/1/2211271-nes_bubblebobble.jpg"},

  {name:"jr pac man", date:1983, company:"Midway", description:"Jr. Pac-Man is an arcade game, released by Bally Midway on August 13, 1983. It is based on Pac-Man and its derivatives but, like Baby Pac-Man, and Pac-Man Plus, was created without the authorization of Namco.", image:"https://giantbomb1.cbsistatic.com/uploads/original/9/93770/2367713-a2600_jrpacman.jpg"},

  {name:"Dig Dug", date:1982, company:"Namco", description:"Dig Dug is a 1982 maze arcade game developed and published by Namco. It was distributed by Atari, Inc. in North America and Europe.", image:"https://i.pinimg.com/originals/ab/f3/8e/abf38e1ce0046c4dd72e029dcac682eb.jpg"},

  {name:"Centipede", date:1980, company:" Atari", description:"Centipede is a vertically oriented fixed shooter arcade game produced by Atari, Inc. in June 1981. The game was designed by Dona Bailey and Ed Logg. It was one of the most commercially successful games from the video arcade's golden age.", image:"http://scoop.previewsworld.com/Image/NewsImage/4/193261/1084592/1"}

  ])

5.times do
  Order.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end

5.times do
  Post.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end

puts "seeded"
