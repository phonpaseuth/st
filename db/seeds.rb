# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Myron', last_name: 'Garner', phone_number: '471-507-8412', email: 'myrongarner@admin.com', password_digest: 'admin123')
User.create(first_name: 'Phonpaseuth', last_name: 'Khamsenesouk', phone_number: '817-773-0493', email: 'phonpaseuth@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Jordan', last_name: 'Bailey', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Roberth-Ann', last_name: 'Moultin', phone_number: '247-839-1928', email: 'ann@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Nneka', last_name: 'Ede', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Rachael', last_name: 'Jean', phone_number: '471-507-8412', email: 'myrongarner@admin.com', password_digest: 'admin123')
User.create(first_name: 'Quincy', last_name: 'Caston', phone_number: '817-773-0493', email: 'phonpaseuth@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Eddie', last_name: 'Murphy', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Jeremy', last_name: 'Hopkins', phone_number: '247-839-1928', email: 'ann@gmail.com', password_digest: 'admin123')
User.create(first_name: 'Jarret', last_name: 'Grant', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')

Post.create(title: "computer science student looking for advice!",
	description: "Is Dr. Bellum a good teacher to take for Programming Language Design?",
	user_id: 1, category_id: 1)
Post.create(title: "selling a computer science 2 book",
	description: "$25 or best offer!",
	user_id: 2, category_id: 2)
Post.create(title: "selling my 2014 toyota corolla",
	description: "starting at $8000",
	user_id: 3, category_id: 3)
Post.create(title: "contact me for buy Loyalty hats!",
	description: "I'm the brand ambassador, feel free to call me directly",
	user_id: 4, category_id: 4)
Post.create(title: "does anyone know how to do oil change?",
	description: "I'm so confused please help",
	user_id: 5, category_id: 5)
Post.create(title: "anyone wanna chill?",
	description: "I'm a pretty cool guy",
	user_id: 6, category_id: 6)
Post.create(title: "A senior computer science student looking to mentor someone",
	description: "I have experiences!!",
	user_id: 7, category_id: 7)
Post.create(title: "looking to take someone out on a date",
	description: "I'll pay for the meal!!",
	user_id: 8, category_id: 8)
Post.create(title: "looking for a roommate for next year",
	description: "i'll be living at the square",
	user_id: 9, category_id: 9)
Post.create(title: "selling my ps4",
	description: "$350",
	user_id: 10, category_id: 10)

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