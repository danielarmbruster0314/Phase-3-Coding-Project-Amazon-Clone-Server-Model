puts "Deleting old data..."

Product.destroy_all
User.destroy_all
Review.destroy_all
Order.destroy_all

puts "🌱 Seeding spices..."

puts "Seeding Users"

user = User.create(
    first_name: "Emeril",
    last_name: "Lagasse",
    password: "bestchef123",
    user_name: "Chef_Emeril"
)

puts "Seeding Kitchen"

air_fryer = Product.create(
    name: "Air Fryer",
    image: "https://media.istockphoto.com/photos/air-fryer-machine-cooking-potato-fried-in-kitchen-lifestyle-of-new-picture-id1318410700?b=1&k=20&m=1318410700&s=170667a&w=0&h=mfAcgW5npmR5AX38gYJnzuxWMKaci8R9lbyX9Mxscjw=",
    price: 99.99,
    description: "The air fryer is essentially an amped-up countertop convection oven—it doesn't actually fry your food. (Although, keep in mind that there's a difference between air-frying and baking.) Patented by Philips Electronics Company, the small appliance claims to mimic the results of deep-frying with nothing more than hot air and little or no oil.",
    category: "Kitchen"
)

knife_set = Product.create(
    name: "Knife Set",
    image: "https://media.istockphoto.com/photos/kitchen-knives-set-picture-id917777484?b=1&k=20&m=917777484&s=170667a&w=0&h=raY-A2P3L6_UcZyCo3RnNJN4hMuiGvu_GgSj0owooSE=",
    price: 49.99,
    description: "This 4pc knife set is super sharp and made of superior Damascus steel blades for precision and accuracy which make it unique from other knives. This beautiful set of knives is sure to compliment your kitchen perfectly. Premium Quality. One set for all your cutting needs, Great Gift Idea.",
    category: "Kitchen"
)

pots_and_pans = Product.create(
    name: "Pots and Pans",
    image: "https://media.istockphoto.com/photos/cooking-and-frying-pans-set-isolated-on-white-picture-id612630426?b=1&k=20&m=612630426&s=170667a&w=0&h=dfAku797hRdHjDSvGK0I782rotuaBkObv6CViPV63YM=",
    price: 74.99,
    description: "Chef-Approved Stainless Clad, Carbon Steel, And Non Stick In One Curated Set. Shop Everything You Need With Our Chef-Curated Set And Craft The Perfect Meal At Home.",
    category: "Kitchen"
)

puts "Seeding Electronics"

monitor = Product.create(
    name: "Computer Monitor",
    image: "https://images.unsplash.com/photo-1552831388-6a0b3575b32a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1vbml0b3J8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    price: 124.99,
    description: "A monitor is a piece of computer hardware that displays the video and graphics information generated by a connected computer through the computer's video card . Monitors are similar to TVs but usually display information at a much higher resolution. Also unlike televisions, monitors typically sit atop a desk rather than being mounted on a wall.",
    category: "Electronics"
)
keyboard = Product.create(
    name: "Keyboard",
    image: "https://images.unsplash.com/photo-1618384887929-16ec33fab9ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8a2V5Ym9hcmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    price: 30.99,
    description: "The keyboard is the piece of computer hardware used to input text, characters, and other commands into a computer or similar device. Even though the keyboard is an external peripheral device in a desktop system (it sits outside the main computer housing ), or is 'virtual' in a tablet PC, it is an essential part of the complete computer system.",
    category: "Electronics"
)
television = Product.create(
    name: "Television",
    image: "https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGVsZXZpc2lvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    price: 399.99,
    description: "Television, sometimes shortened to TV or telly, is a telecommunication medium used for transmitting moving images in black-and-white or in color, and in two or three dimensions and sound.",
    category: "Electronics"
)

puts "Seeding Sporting Goods"

soccer_ball = Product.create(
    name: "Soccer Ball",
    image: "https://images.unsplash.com/photo-1542668358-a44c1225f11f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c29jY2VyYmFsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    price: 39.99,
    description: "Find the perfect soccer ball today. We sell official match balls, outdoor balls, indoor balls and training balls of every size, playing level and budget.",
    category: "Sports"
)

heavy_bag = Product.create(
    name: "Heavy Bag",
    image: "https://media.istockphoto.com/photos/punching-bag-picture-id1223740285?b=1&k=20&m=1223740285&s=170667a&w=0&h=01JHaSlXk4zfeLlG90OSIdut2jt2DjDQjdi_yIQQhc4=",
    price: 70.99,
    description: "A traditional style heavy bag is among the most popular training bags and provides an incredible target for a boxer to practice and perfect jabs, power punches, hooks, angle punches, combinations, in addition to increasing punching power and hand speed, footwork and movement.",
    category: "Sports"
)

cricket_bat = Product.create(
    name: "Cricket Bat",
    image: "https://media.istockphoto.com/photos/cricket-bat-and-ball-place-on-cricket-ground-green-grass-picture-id1306078671?b=1&k=20&m=1306078671&s=170667a&w=0&h=0quNvb3B8AjPw16-AMKltG_gDhLgx_eZISms5p_qWak=",
    price: 69.99,
    description: "A cricket bat is a specialised piece of equipment used by batters in the sport of cricket to hit the ball, typically consisting of a cane handle attached to a flat-fronted willow-wood blade. It may also be used by a batter who is making ground to avoid a run out, by holding the bat and touching the ground with it.",
    category: "Sports"
)

puts "Books"

the_lean_startup = Product.create(
    name: "The Lean Startup",
    image: "https://g.christianbook.com/dg/product/cbd/f400/887894.jpg",
    price: 22.99,
    description: "Eric Ries defines a startup as an organization dedicated to creating something new under conditions of extreme uncertainty. This is just as true for one person in a garage or a group of seasoned professionals in a Fortune 500 boardroom.",
    category: "Books"
)

the_art_of_zen_and_motorcycle_maintenance = Product.create(
    name: "Zen and the Art of Motorcycle Maintenance",
    image: "https://target.scene7.com/is/image/Target/GUEST_f71a64fe-d386-4482-84d3-5f79c90566e5?wid=325&hei=325&qlt=80&fmt=pjpeg",
    price: 13.39,
    description: "One of the most influential and provocative books of its generation, 'Zen & the Art of Motorcycle Maintenance' continues to attract and inspire readers of all ages with its intriguing blend of ancient and Eastern philosophy, cultural criticism, and scientific inquiry.",
    category: "Books"
)

the_last_lecture = Product.create(
    name: "The Last Lecture",
    image: "https://g.christianbook.com/dg/product/cbd/f400/132325.jpg",
    price: 17.99,
    description: "What would you say if you knew you were going to die soon? What life-lessons and advice would you give? Randy Pausch, professor of Computer Science and Design at Carnegie Mellon University, asked himself this question when he was diagnosed with terminal cancer. 'The Last Lecture' is his answer to that question. Gathering from years of experience as a professor and mentor, Pausch gives advice on pursuing your dreams, making the most of your time and focusing on what matters. Let his last words inspire you to live more fully and embrace the time you have.",
    category: "Books"
)

puts "Seeding Review"

Review.create(star_rating: rand(1..5),review: "This is awesome!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome2!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome3!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome4!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome5!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome6!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome7!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome8!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome9!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome00!",user_id: user.id, product_id: air_fryer.id)
Review.create(star_rating: rand(1..5),review: "This is awesome123!",user_id: user.id, product_id: air_fryer.id)

puts "✅ Done seeding!"
