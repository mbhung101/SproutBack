# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1= User.create(fname:"Richard", lname: "Teekler", age:70, state: "NY", city: "Bumblefuq", bio: "My plants are the only thing preventing me from drinking enough cough syrup to fall asleep forever", username: "xoxoRichardTeekler70xoxo", password:'a', profilepic: "https://cdn0.iconfinder.com/data/icons/financial-business/512/agriculture_project-512.png")
season1 = Season.create(year:2017,user_id:1)
day1 = Day.create(temperature:50,forecast:"Rain",season_id:1)
garden1 = Garden.create(year:2017,name:"backyard",user_id:1,season_id:1)
garden2 = Garden.create(year:2017,name:"sex dungeon",user_id:1,season_id:1)
alert1 = Alert.create(message:"My son is a homosexual", priority:"High",date:"6/12/2017", user_id:1)
alert2 = Alert.create(message:"High winds tomorrow", priority:"Medium",date:"6/12/2017", user_id:1)
patch1 = Patch.create(plant:"ghost pepper",number:20,fertilizer:"My ex-wife",spacing:40,planted_on:"7/2/2017",water:"daily",notes:"Makes me feel alive momentarily",sunlight:"direct",age:10,total_yield:1023,substrate:"sand",seed_depth:6, garden_id:1,user_id:1)
patch2 = Patch.create(plant:"Eggplant",number:10,fertilizer:"My ex-wife",spacing:40,planted_on:"7/2/2017",water:"daily",notes:"Reminds me of mine",sunlight:"direct",age:10,total_yield:1340,substrate:"top soil",seed_depth:10, garden_id:1,user_id:1)
yield1 = Yield.create(weight:12,harvested_on:'12/2/2014',patch_id:1)
yield1 = Yield.create(weight:21,harvested_on:'12/3/2014',patch_id:2)
image1 = Image.create(url:"https://i2.wp.com/maukisunfarm.com/wp-content/uploads/2016/12/bhut-jolokia-ghost-pepper.jpg?resize=450%2C450",patch_id:1)
image2 = Image.create(url:"http://www.well-beingsecrets.com/wp-content/uploads/How-Eggplant-Grows.jpg",patch_id:2 )
image3 = Image.create(url:"http://www.homedepot.com/catalog/productImages/1000/de/de72fda8-da4c-428b-8557-fb7d3770c041_1000.jpg",patch_id:2)
