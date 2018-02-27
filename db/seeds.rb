# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(first_name: 'Myron', last_name: 'Garner', phone_number: '471-507-8412', email: 'myrongarner@admin.com', password_digest: 'admin123')
u2 = User.create(first_name: 'Pon', last_name: 'Kham', phone_number: '817-773-0493', email: 'phonpaseuth@gmail.com', password_digest: 'admin123')
u3 = User.create(first_name: 'Jordan', last_name: 'Bailey', phone_number: '247-839-1928', email: 'jordan@gmail.com', password_digest: 'admin123')

Post.create(title: "Programming Language Design Book for Sale!!!", description: "$50 or best offer!", category: "book", user_id: 2)
Post.create(title: "Looking for a CLEAN roommate", description: "I'm a a guy. I will be living at the University Squre.", category: "roommate", user_id: 3)
Post.create(title: "Need a tutor for Calculus 2", description: "I really need help! I will pay you for your time.", category: "tutor", user_id: 1)
Post.create(title: "Anyone got a spare calculator?", description: "Mine broke down last week. In need of a new one for my math class. Please help! ", category: "etc", user_id: 2)