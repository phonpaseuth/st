# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(first_name: 'Myron', last_name: 'Garner', phone_number: '471-507-8412', email: 'myrongarner@admin.com', password_digest: 'admin123')
Post.create(title: "First post", description: "This is the first post for seeding purpose", category: "etc", user_id: 1)
Post.create(title: "second post", description: "This is the second post", category: "etc", user_id: 1)

u2 = User.create(first_name: 'Pon', last_name: 'Kham', phone_number: '123-456-7890', email: 'pon@admin.com', password_digest: 'admin123')
Post.create(title: "Third post", description: "This is the first post for seeding purpose", category: "etc", user_id: 2)
Post.create(title: "Fourth post", description: "This is the second post", category: "etc", user_id: 2)