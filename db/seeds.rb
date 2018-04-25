# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Myron', last_name: 'Garner', phone_number: '471-507-8412', email: 'myrongarner@admin.com', password_digest: 'admin123')
User.create(first_name: 'Pon', last_name: 'Kham', phone_number: '817-773-0493', email: 'phonpaseuth@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Jordan', last_name: 'Bailey', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')

Post.create(title: "Programming Language Design Book for Sale!!!",
	description: "$50 or best offer!",
	user_id: 2, category_id: 2)
Post.create(title: "Looking for a CLEAN roommate",
	description: "I'm a a guy. I will be living at the University Squre.",
	user_id: 3, category_id: 9)
Post.create(title: "Need a Calculus 2 textbook!",
	description: "I really need help! I will pay you for your time.",
	user_id: 1, category_id: 2)
Post.create(title: "Need rommate for Brookside this summer!",
	description: "Mine broke down last week. In need of a new one for my math class. Please help! ",
	user_id: 2, category_id: 9)

Comment.create(text: "$25", user_id: 1, post_id: 1)
Comment.create(text: "$30", user_id: 3, post_id: 1)

Category.create(category: "Advice")
Category.create(category: "Books")
Category.create(category: "Cars")
Category.create(category: "Clothes")
Category.create(category: "Help")
Category.create(category: "Friends")
Category.create(category: "Mentees/Mentors")
Category.create(category: "Relationship")
Category.create(category: "Roommates")
Category.create(category: "Others")