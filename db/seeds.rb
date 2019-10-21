User.destroy_all
Item.destroy_all
Order.destroy_all
Post.destroy_all

5.times do
  User.create(name: Faker::Games::SuperSmashBros.fighter)
end


Item.create([
  {name:"Pong", date:1972, company:"Atari", description:"Pong is one of the earliest arcade video games. It is a table tennis sports game featuring simple two-dimensional graphics. The game was originally manufactured by Atari, which released it in 1972. Allan Alcorn created Pong as a training exercise assigned to him by Atari co-founder Nolan Bushnell.", image:"https://images-na.ssl-images-amazon.com/images/I/51HrAvTyiUL._QL40_SX400_.jpg"},

  {name:"Space Invaders", date:1978, company:"Atari", description:"Space Invaders is a Japanese shooting video game released in 1978 by Taito. It was developed by Tomohiro Nishikado, who was inspired by other media: Breakout, The War of the Worlds, and Star Wars.", image:"https://atariage.com/2600/boxes/b_SpaceInvaders_Color_front.jpg"},

  {name:"Breakout", date:"1976", company:"Atari", description:"Breakout is an arcade game developed and published by Atari, Inc., and released on May 13, 1976. It was conceptualized by Nolan Bushnell and Steve Bristow, influenced by the seminal 1972 Atari arcade game Pong, and built by Steve Wozniak, aided by Steve Jobs.", image:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.mobygames.com%2Fgame%2Fbreakout_&psig=AOvVaw0JrMGUYe6WB14Wx5FqQ9TG&ust=1571774693162000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIDDpZeTruUCFQAAAAAdAAAAABAF"},

  {name:"Spy Hunter", date:"1983", company:"Midway Games", description:"Spy Hunter is an overhead view, vehicular combat game developed by Bally Midway and released in arcades in 1983. The game draws inspiration from the James Bond films and was originally supposed to carry the James Bond license.", image:"https://cdn11.bigcommerce.com/s-m92i69d8x0/images/stencil/1280x1775/products/9146/11414/Spy_Hunter__46538.1506496056.jpg?c=2&imbypass=on"},

  {name:"Bubble Bobble", date:"1986", company:"Taito", description:"Bubble Bobble is a platform game by Taito, first released in arcades in 1986 and later ported to home systems by Toei Company.", image:"https://gamespot1.cbsistatic.com/uploads/scale_medium/mig/1/2/7/1/2211271-nes_bubblebobble.jpg"}
  ])

5.times do
  Order.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end

5.times do
  Post.create(user_id: User.all.sample.id, item_id: Item.all.sample.id)
end

puts "seeded"
