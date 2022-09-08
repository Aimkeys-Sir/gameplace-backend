puts "In the beginning..."
#create games
Game.create(
    name:"The House of the Dragon",
    description:"",
    price:1000,
    min_age:7,
    min_health:6,
    min_level:1,
    play_time:15,
    teams:1
)
Game.create(
    name:"Motor Combat",
    description:"",
    price:400,
    min_age:6,
    min_health:5,
    min_level:0,
    play_time:5,
    teams:5
)
Game.create(
    name:"Southern Militia",
    description:"",
    price:500,
    min_age:5,
    min_health:4,
    min_level:0,
    play_time:20,
    teams:2
)
Game.create(
    name:"Death Race",
    description:"",
    price:800,
    min_age:7,
    min_health:5,
    min_level:1,
    play_time:15,
    teams:4
)
Game.create(
    name:"Kamikatze All in",
    description:"",
    price:1000,
    min_age:12,
    min_health:9,
    min_level:1,
    play_time:20,
    teams:4
)
Game.create(
    name:"Row Extreme",
    description:"",
    price:500,
    min_age:10,
    min_health:6,
    min_level:0,
    play_time:10,
    teams:2
)
Game.create(
    name:"Kimi's World",
    description:"",
    price:300,
    min_age:4,
    min_health:3,
    min_level:0,
    play_time:10,
    teams:1
)
Game.create(
    name:"The Grey Sniper",
    description:"",
    price:400,
    min_age:6,
    min_health:4,
    min_level:0,
    play_time:10,
    teams:1
)
Game.create(
    name:"Galaxy pilates",
    description:"",
    price:500,
    min_age:4,
    min_health:4,
    min_level:0,
    play_time:15,
    teams:4
)
Game.create(
    name:"The Death pool",
    description:"",
    price:1000,
    min_age:6,
    min_health:7,
    min_level:1,
    play_time:15,
    teams:3
)
Game.create(
    name:"The Renegades and The Rogues",
    description:"",
    price:800,
    min_age:8,
    min_health:8,
    min_level:1,
    play_time:25,
    teams:10
)
Game.create(
    name:"The Animal Land",
    description:"",
    price:500,
    min_age:4,
    min_health:3,
    min_level:0,
    play_time:15,
    teams:1
)
Game.create(
    name:"The High Fivers",
    description:"",
    price:1000,
    min_age:8,
    min_health:6,
    min_level:1,
    play_time:15,
    teams:2
)
puts 'Games were created'
#create shops
GameShop.create(
    name:"Prestige Mall",
    location:"Nairobi, Ngong Road ave"
)
GameShop.create(
    name:"Gameplace, Gatura",
    location:"Murang'a, Gatura"
)
GameShop.create(
    name:"The High five Gameplace",
    location:"Thika town"
)
GameShop.create(
    name:"The Aimkey's fantasy place",
    location:"Nairobi, Westlands"
)
GameShop.create(
    name:"Nakuru One Gameplace",
    location:"Nakuru"
)
GameShop.create(
    name:"The Stars Theatre VR",
    location:"Kiambu, Juja"
)
GameShop.create(
    name:"Atlantis",
    location:"Mombasa, Likoni"
)
GameShop.create(
    name:"Medieval dreams",
    location:"Malindi"
)
GameShop.create(
    name:"Meet the Gentlemen",
    location:"Nanyuki"
)
puts 'And then the shops to serve them'
#Players
100.times do
    Player.create(
        name: Faker::Name.unique.name,
        email: Faker::Internet.unique.email,
        level: rand(0..10),
        age: rand(4..60),
        health_score: rand(3..10)
    )
end
puts 'There came the guys'
#sessions
500.times do
    Session.create(
        game_id: Game.all[rand(Game.count)].id,
        player_id: Player.all[rand(Player.count)].id,
        game_shop_id: GameShop.all[rand(GameShop.count)].id,
        play_time: Time.new(2022,9,rand(7..10),rand(8..18),rand(0..11)*5)
    )
end
puts "Finally ladies and gentlemen. The show is on!"