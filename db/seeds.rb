user1= User.create(fname:"Richard", lname: "Teekler", age:70, state: "NY", city: "Bumblefuq", bio: "My plants are the only thing preventing me from drinking enough cough syrup to fall asleep forever", username: "xoxoRichardTeekler70xoxo", password:'a', profilepic: "https://cdn0.iconfinder.com/data/icons/financial-business/512/agriculture_project-512.png")
user2= User.create(fname:"Steve", lname: "Ross", age:42, state: "NY", city: "Ronkonkoma", bio: "We don't make mistakes, only happy accidents - that's what my dad said about me as a boy to all his friends.", username: "sRoss", password:'a', profilepic: "https://i.ytimg.com/vi/dNEp3hoHSDI/maxresdefault.jpg")
season1 = Season.create(year:2017,user_id:1)
day1 = Day.create(temperature:50,forecast:"Rain",season_id:1)
garden1 = Garden.create(year:2017,name:"backyard",user_id:1,season_id:1)
garden2 = Garden.create(year:2017,name:"sex dungeon",user_id:1,season_id:1)
garden3 = Garden.create(year: 1985, name:"happy little tree garden", user_id:2,season_id:1)
garden4 = Garden.create(year: 1985, name:"Steve's mountainside fortress of solitude ", user_id:2,season_id:1)
alert1 = Alert.create(message:"Obama is not a real U.S citizen", priority:"High",date:"6/12/2017", user_id:1)
alert2 = Alert.create(message:"High winds tomorrow", priority:"Medium",date:"6/12/2017", user_id:1)
alert3 = Alert.create(message: "Ran out of fertilizer!", priority:"High",date:"4/21/1976", user_id:1)
alert7 = Alert.create(message: "Pick some peppers for the ren fair guys", priority:"High",date:"4/21/1976",user_id:1)
alert6 = Alert.create(message: "Disquieting thoughts invading my brain again", priority:"Medium",date:"8/10/1988",user_id:2)
alert4 = Alert.create(message: "Dad's squirrel colony need to be bottle fed", priority:"Medium",date:"8/12/1980",user_id:2)
alert5 = Alert.create(message: "Art doesn't seem to bringing me joy since Dad died", priority:"Low",date:"4/18/1978",user_id:2)
patch1 = Patch.create(plant:"Ghost Pepper",number:20,fertilizer:"My ex-wife",spacing:40,planted_on:"7/2/2017",water:"daily",notes:"Makes me feel alive momentarily",sunlight:"direct",age:10,total_yield:1023,substrate:"sand",seed_depth:6, garden_id:1,user_id:1)
patch2 = Patch.create(plant:"Eggplant",number:10,fertilizer:"My former cat",spacing:28,planted_on:"7/2/2017",water:"daily",notes:"Reminds me of mine",sunlight:"direct",age:10,total_yield:1340,substrate:"top soil",seed_depth:10, garden_id:1,user_id:1)
patch3 = Patch.create(plant:"Squash",number:10,fertilizer:"Squirrel manure",spacing:20,planted_on:"7/2/1992",water:"twice a week",notes:"Gnarled like my soul",sunlight:"indirect",age:10,total_yield:1340,substrate:"Scott's brand potting soil",seed_depth:6, garden_id:3,user_id:2)
patch4 = Patch.create(plant:"Cherry tree",number:3,fertilizer:"Squirrel manure",spacing: 100,planted_on:"7/2/1984",water:"once a week",notes:"A ray of sunshine in my bleak existence",sunlight:"direct",age:10,total_yield:1029,substrate:"Clay",seed_depth:10, garden_id:3,user_id:2)
patch4 = Patch.create(plant:"Potatoes",number:50,fertilizer:"My love",spacing: 20,planted_on:"7/2/1994",water:"daily",notes:"My wife calls me a spud all the time...amongst other things",sunlight:"indirect",age:10,total_yield:4029,substrate:"Regular Soil",seed_depth:8, garden_id:3,user_id:2)
yield1 = Yield.create(weight:12,harvested_on:'12/2/2014',patch_id:1)
yield1 = Yield.create(weight:21,harvested_on:'12/3/2014',patch_id:2)
image1 = Image.create(url:"https://i2.wp.com/maukisunfarm.com/wp-content/uploads/2016/12/bhut-jolokia-ghost-pepper.jpg?resize=450%2C450",patch_id:1)
image2 = Image.create(url:"http://www.well-beingsecrets.com/wp-content/uploads/How-Eggplant-Grows.jpg",patch_id:2 )
image3 = Image.create(url:"https://www.rodalesorganiclife.com/sites/rodalesorganiclife.com/files/styles/slideshow-desktop/public/summersquash_anastasiia_malinich_1100.jpg?itok=WmR0Ht-o",patch_id:3)
image4 = Image.create(url:"https://www.fast-growing-trees.com/images/P/Stella-Cherry-Tree-450w.jpg",patch_id:4)
image5 = Image.create(url:"https://www.ahealthyphilosophy.com/system/attachments/153/original/potato_plants.jpg?1330109626",patch_id:5)
image6 = Image.create(url:"https://i.ytimg.com/vi/8QWvzEQ69Kw/maxresdefault.jpg",patch_id:5)
