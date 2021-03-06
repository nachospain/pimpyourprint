UserChallenge.destroy_all
Challenge.destroy_all
Attendance.destroy_all
Event.destroy_all
Transportation.destroy_all
Tip.destroy_all
User.destroy_all

puts "Generating users..."

admin = User.new(username: "AdminUser", email:"admin@test.com", password:"admin@test.com", city: "Berlin", time_zone: "Berlin", admin: true, score: 188, streak: 4, streak_created_at: 4.days.ago)
admin.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416288/PimpYourPrint/bala.jpg'
admin.save!

user = User.new(username: "Testuser", email:"test@test.com", password:"test@test.com", city: "London", time_zone: "Berlin", score: 55, streak: 3, streak_created_at: 3.days.ago)
user.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543416493/PimpYourPrint/bunny.jpg'
user.save!

anja = User.new(username: "Anja", email:"anja@test.com", password:"anja@test.com", city: "Ljubljana", time_zone: "Berlin", score: [12,23,34,45,56,67,78,89].sample, streak: [1,2,3,4,5].sample, streak_created_at: [1,2,3,4,5].sample.days.ago)
anja.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1544090564/anja.jpg'
anja.save!

rebeca = User.new(username: "Rebeca", email:"rebeca@test.com", password:"rebeca@test.com", city: "Goiânia", time_zone: "London", score: [12,23,34,45,56,67,78,89].sample, streak: [1,2,3,4,5].sample, streak_created_at: [1,2,3,4,5].sample.days.ago)
rebeca.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1544090566/rebeca.jpg'
rebeca.save!

nacho = User.new(username: "Nacho", email:"nacho@test.com", password:"nacho@test.com", city: "Madrid", time_zone: "London", score: [12,23,34,45,56,67,78,89].sample, streak: [1,2,3,4,5].sample, streak_created_at: [1,2,3,4,5].sample.days.ago)
nacho.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1544090484/37050701.jpg'
nacho.save!

jadwiga = User.new(username: "Jadwiga", email:"jadwiga@coumert.com", password:"jadwiga@coumert.com", city: "Berlin", time_zone: "Berlin")
jadwiga.remote_avatar_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543580300/profil-picture.jpg'
jadwiga.save!

puts "Generating Transportations"
t1 = Transportation.new(user_id: admin.id, carbon: 147000)
t1.created_at = (rand*10).days.ago
t1.save
t2 = Transportation.new(user_id: admin.id, carbon: 280000)
t2.created_at = (rand*10).days.ago
t2.save
t3 = Transportation.new(user_id: admin.id, carbon: 18000)
t3.created_at = (rand*10).days.ago
t3.save
t4 = Transportation.new(user_id: admin.id, carbon: 0)
t4.created_at = (rand*10).days.ago
t4.save
t5 = Transportation.new(user_id: admin.id, carbon: 22000)
t5.created_at = (rand*10).days.ago
t5.save
t6 = Transportation.new(user_id: admin.id, carbon: 35000)
t6.created_at = (rand*10).days.ago
t6.save
t7 = Transportation.new(user_id: admin.id, carbon: 11000)
t7.created_at = (rand*10).days.ago
t7.save
t8 = Transportation.new(user_id: admin.id, carbon: 101000)
t8.created_at = (rand*10).days.ago
t8.save
t9 = Transportation.new(user_id: admin.id, carbon: 177000)
t9.created_at = (rand*10).days.ago
t9.save
t10 = Transportation.new(user_id: admin.id, carbon: 32000)
t10.created_at = (rand*10).days.ago
t10.save

jadwiga_t1 = Transportation.new(user_id: jadwiga.id, carbon: 1200)
jadwiga_t1.created_at = 1.day.ago
jadwiga_t1.save
jadwiga_t2 = Transportation.new(user_id: jadwiga.id, carbon: 0)
jadwiga_t2.created_at = 2.days.ago
jadwiga_t2.save
jadwiga_t3 = Transportation.new(user_id: jadwiga.id, carbon: 10000)
jadwiga_t3.created_at = 3.days.ago
jadwiga_t3.save
jadwiga_t4 = Transportation.new(user_id: jadwiga.id, carbon: 80000)
jadwiga_t4.created_at = 4.days.ago
jadwiga_t4.save
jadwiga_t5 = Transportation.new(user_id: jadwiga.id, carbon: 120000)
jadwiga_t5.created_at = 5.days.ago
jadwiga_t5.save
jadwiga_t6 = Transportation.new(user_id: jadwiga.id, carbon: 230000)
jadwiga_t6.created_at = 6.days.ago
jadwiga_t6.save

user_t1 = Transportation.new(user_id: user.id, carbon: 53000)
user_t1.created_at = 1.day.ago
user_t1.save
user_t2 = Transportation.new(user_id: user.id, carbon: 12000)
user_t2.created_at = 2.days.ago
user_t2.save
user_t3 = Transportation.new(user_id: user.id, carbon: 99000)
user_t3.created_at = 3.days.ago
user_t3.save
user_t4 = Transportation.new(user_id: user.id, carbon: 163000)
user_t4.created_at = 4.days.ago
user_t4.save
user_t5 = Transportation.new(user_id: user.id, carbon: 12000)
user_t5.created_at = 5.days.ago
user_t5.save

puts "Generating Challenges"
meat = Challenge.new(title: "A day without eating meat",
                    category: "nutrition",
                    description:"Discover alternatives to your nutrition.",
                    carbon: 100,
                    active: false
                    )
meat.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543422305/PimpYourPrint/vegetarian-day.jpg'
meat.save!

calendar = Challenge.new(title: "Hang a seasonal fruits and veggies calendar in your kitchen",
                    category: "nutrition",
                    description:"Discover new flavors by eating seasonal and local.",
                    carbon: 15,
                    active: false
                    )
calendar.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423074/PimpYourPrint/seasonal.jpg'
calendar.save!

soap = Challenge.new(title: "Replace your bottle of body wash with a bar soap",
                    category: "plastic",
                    description:"Bar soap comes in much less packaging and lasts much longer.",
                    carbon: 25,
                    active: false
                    )
soap.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/bar-soap.jpg'
soap.save!

bottle = Challenge.new(title: "Equip yourself with a reusable bottle of water",
                    category: "plastic",
                    description:"Producing bottled water requires around 6 times as much water per bottle as there is in the container.",
                    carbon: 12, # One bottle emits 82.8 grams of CO2, 12kg per month with average bottle consumption.
                    active: true
                    )
bottle.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1544112225/bottle.jpg'
bottle.save!

transportation = Challenge.new(title: "Calculate your daily transportation carbon footprint",
                    category: "transportation",
                    description:"Ever wondered about your daily transportation carbon footprint impact?",
                    carbon: 0,
                    active: false
                    )
transportation.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423072/PimpYourPrint/bike.jpg'
transportation.save!

event_challenge = Challenge.new(title: "Join a Pimp Your Print event in your city",
                    category: "other",
                    description:"To get things in the move, nothing is better than to do it together!",
                    carbon: 0,
                    active: false
                    )
event_challenge.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423622/PimpYourPrint/event.jpg'
event_challenge.save!

shower = Challenge.new(title: "Limit your shower to 5 minutes",
                    category: "water",
                    description:"Put a 5 minutes long song and save liters of water by limiting your shower time! Believe us, you'll have enough time.",
                    carbon: 9,
                    active: false
                    )
shower.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543420779/PimpYourPrint/shower.jpg'
shower.save!

elevator = Challenge.new(title: "Skip the elevator and take the stairs",
                    category: "energy",
                    description:"An elevator ride costs in average x of electricity. Skip the elevator and take the staris and lose x calories!",
                    carbon: 45,
                    active: false
                    )
elevator.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423621/PimpYourPrint/stairs.jpg'
elevator.save!

car = Challenge.new(title: "Leave your car home and use alternative transports",
                    category: "transportation",
                    description:"An empty car ride in the city is the most unefficient way of traveling.",
                    carbon: 50,
                    active: false
                    )
car.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/car.jpg'
car.save!

heating = Challenge.new(title: "Reduce your heating by 1 degree",
                    category: "energy",
                    description:"Only one degree of all heating can make a difference on your bills and on our planet. Add an extra layer if necessary!",
                    carbon: 30,
                    active: false
                    )
heating.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/heating.jpg'
heating.save!

cup = Challenge.new(title: "Get yourself a reusable cup",
                    category: "plastic",
                    description:"Gently decline all offered plastic cups by using your own!",
                    carbon: 46,
                    active: false
                    )
cup.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423069/PimpYourPrint/reusable-cup.jpg'
cup.save!

sticker = Challenge.new(title: "Install a 'No commercials' sticker on your mailbox",
                    category: "waste",
                    description:"Who cares about all that crap advertisement.",
                    carbon: 90,
                    active: false
                    )
sticker.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423073/PimpYourPrint/sticker.jpg'
sticker.save!

dry_clothes = Challenge.new(title: "Hang your clothes to dry them",
                    category: "energy",
                    description:"Skip the dryer, that uses too much energy and damages your clothes. (And its's freaking loud)",
                    carbon: 80,
                    active: false
                    )
dry_clothes.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423076/PimpYourPrint/dry-clothes.jpg'
dry_clothes.save!

dry_hair = Challenge.new(title: "Dry your hair with a towel instead of a blow dryer",
                    category: "energy",
                    description:"It's better for the earth, for your hair and for your energy bill!",
                    carbon: 40,
                    active: false
                    )
dry_hair.remote_picture_url = 'https://res.cloudinary.com/jadwiga/image/upload/v1543423070/PimpYourPrint/dry-hair.jpg'
dry_hair.save!

usernames = []
challenges = ['A day without eating meat', 'Dry your hair with a towel instead of a blow dryer', 'Hang your clothes to dry them']
User.all.each { |user| usernames << user.username}
usernames.delete("Jadwiga")

usernames.each { |user|
  i = 0
  3.times do
    UserChallenge.new(user_id: "#{User.where(username: user)[0].id}".to_i, completed: true, challenge_id: "#{Challenge.where(title: challenges[i])[0].id}".to_i).save!
    i += 1
  end
}

puts "Generating Events"

event1 = Event.new(user_id: nacho.id,
                  title: "Green talk @ Le Wagon After party",
                  description: "Have a drink after Le Wagon Demoday with people that also care about the environment",
                  address: "Factory, Rheinsberger Str. 76/77, 10115 Berlin",
                  capacity: "100",
                  date: "2018-12-07 20:00",
                  date_end: "2018-12-08 06:00",
                  city: "Berlin")
event1.save

event2 = Event.new(user_id: anja.id,
                  title: "Berlin street cleaning",
                  description: "I would like to meet up this Sunday to clean up the streets of Berlin. We will start from Alexander platz and walk our until Mauerpark picking up trash. Free beers in the end of the day!",
                  address: "Alexander 10178 Berlin",
                  capacity: "10",
                  date: "2018-12-08 11:00",
                  date_end: "2018-12-08 14:00",
                  city: "Berlin")
event2.save

event3 = Event.new(user_id: rebeca.id,
                    title: "Clothes swop",
                    description: "I'm inviting you to come to my place to exchange the clothes you don't wear anymore! Clothes that won't be picked will be given to charity",
                    address: "Falckensteinstraße 35, 10997 Berlin",
                    capacity: "15",
                    date: "2018-12-09 10:30",
                    date_end: "2018-12-09 12:00",
                    city: "Berlin")
event3.save

event4 = Event.new(user_id: jadwiga.id,
                  title: "How can we improve recycling in Munich?",
                  description: "Let's meet up at the Hofbrauhaus and talk about ideas to improve the recycling system in Munich",
                  address: "Platzl 9, 80331 München",
                  capacity: "20",
                  date: "2018-12-07 18:30",
                  date_end: "2018-12-07 22:00",
                  city: "Munich")
event4.save

event5 = Event.new(user_id: anja.id,
                  title: "Demonstration in the streets of Ljubljana",
                  description: "Let's meet up on the main square of Ljubljana and show the government what we have to say.",
                  address: "Tržnica 1000 Ljubljana Slovenia",
                  capacity: "150",
                  date: "2018-12-07 18:30",
                  date_end: "2018-12-07 22:00",
                  city: "Ljubljana")
event5.save

puts "Generating Attendances"

Attendance.new(user_id: nacho.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: anja.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: rebeca.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: clara.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: marcel.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: dimitry.id, event_id: event1.id,  attending: true).save
Attendance.new(user_id: admin.id, event_id: event1.id, attending: true).save
Attendance.new(user_id: user.id, event_id: event1.id, attending: true).save


puts "Generating Tips"

Tip.new(user_id: nacho.id, challenge_id: bottle.id, content:"Don't forget to recycle your old plastic bottles.").save
Tip.new(user_id: rebeca.id, challenge_id: bottle.id, content:"I found mine in the trash!").save
Tip.new(user_id: anja.id, challenge_id: bottle.id, content:"I simply use a beer bottle. Glass over plastic!").save

puts "..aaaand done!"
