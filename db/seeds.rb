puts "In the beginning..."
#create games
Game.create(
    name:"The House of the Dragon",
    description:"Tame your dragon and ride him wherever you wish. Imagine a land where people are afraid of dragons. It is a reasonable fear: dragons possess a number of qualities that make being afraid of them a very commendable response.",
    price:1000,
    min_age:7,
    min_health:6,
    min_level:1,
    play_time:15,
    teams:1,
    technologies:"vr,quiver,bow"
)
Game.create(
    name:"Motor Combat",
    description:"People are more violently opposed to fur than leather because it’s safer to harass rich women than motorcycle gangs. It's all gas friends, happiness is the corner.",
    price:400,
    min_age:6,
    min_health:5,
    min_level:0,
    play_time:5,
    teams:5,
    technologies:"vr,ar,playstation_vr"
)
Game.create(
    name:"Southern Militia",
    description:"Battles are won by slaughter and maneuver. The greater the general, the more he contributes in maneuver, the less he demands in slaughter.",
    price:500,
    min_age:5,
    min_health:4,
    min_level:0,
    play_time:20,
    teams:2,
    technologies:"vr,hand_gun,sniper_riffle"
)
Game.create(
    name:"Death Race",
    description:" It is just a matter of when. Take courage, nobody makes it out alive.",
    price:800,
    min_age:7,
    min_health:5,
    min_level:1,
    play_time:15,
    teams:4,
    technologies:"vr,car,hand_gun"
)
Game.create(
    name:"Kamikatze All in",
    description:"They died hard, those savage men—like wounded wolves at bay. They were filthy, and they were lousy, and they stink. And I loved them.",
    price:1000,
    min_age:12,
    min_health:9,
    min_level:1,
    play_time:20,
    teams:4,
    technologies:"playstation_vr,vr,sword"
)
Game.create(
    name:"Row Extreme",
    description:"We may have all come on different ships, but we're in the same boat now. Water in the boat is the ruin of the boat, but water under the boat is its support.",
    price:500,
    min_age:10,
    min_health:6,
    min_level:0,
    play_time:10,
    teams:2,
    technologies:"vr,boat"
)
Game.create(
    name:"Kimi's World",
    description:"If Music is a Place — then Jazz is the City, Folk is the Wilderness, Rock is the Road, Classical is a Temple. Go to all these places",
    price:300,
    min_age:4,
    min_health:3,
    min_level:0,
    play_time:10,
    teams:1,
    technologies:'vr'
)
Game.create(
    name:"The Grey Sniper",
    description:"Sneaker under wet glass and rock and put the tango to sleep. Whoever said the pen is mightier than the sword obviously never encountered automatic weapons.",
    price:400,
    min_age:6,
    min_health:4,
    min_level:0,
    play_time:10,
    teams:1,
    technologies:'sniper_riffle,vr'
)
Game.create(
    name:"Galaxy pilates",
    description:"Warp across galaxy at light speed in a journey to discover the universe. An remember, there are no passengers on spaceship earth. We are all crew. If you are in a spaceship that is traveling at the speed of light, and you turn on the headlights, does anything happen?",
    price:500,
    min_age:4,
    min_health:4,
    min_level:0,
    play_time:15,
    teams:4,
    technologies:"jet,vr"
)
Game.create(
    name:"The Death pool",
    description:"Guy came in here looking for you. Real Grim Reaper-type. I don't know. Might further the plot. You can't afford to die; you'd lose too much money.",
    price:1000,
    min_age:6,
    min_health:7,
    min_level:1,
    play_time:15,
    teams:3,
    technologies:'vr,sword,hand_gun'
)
Game.create(
    name:"The Renegades and The Rogues",
    description:"Try to look unimportant; they may be low on ammo and if you see a bomb disposal technician running, try to keep up with him.",
    price:800,
    min_age:8,
    min_health:8,
    min_level:1,
    play_time:25,
    teams:10,
    technologies:'vr,hand_gun'
)
Game.create(
    name:"The Animal Land",
    description:"The fresh breathe of morning and the music of the stars. A land of mystical animals, friends and foe. Let go and adventure",
    price:500,
    min_age:4,
    min_health:3,
    min_level:0,
    play_time:15,
    teams:1,
    technologies:"ar,vr"
)
Game.create(
    name:"The High Fivers",
    description:"This is awkward. Not  you're awkward, but cause we're...I'm awkward. You're gorgeous. Wait, what?",
    price:1000,
    min_age:8,
    min_health:6,
    min_level:1,
    play_time:15,
    teams:2,
    technologies:"ar,vr"
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
GameShop.all.map do |shop|
    rand(3..15).times do 
        shop.games << Game.all[rand(Game.count)]
    end
end
puts 'the games were assigned to gameshops'
#Players
100.times do
    Player.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: rand(123456..124356),
        email: Faker::Internet.unique.email,
        level: rand(0..10),
        callsign: Faker::Creature::Bird.common_name,
        birthday: Date.new(rand(1960..2015),rand(1..12),rand(1..28)).to_s,
        credits:rand(50..1000)*10
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