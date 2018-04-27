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
	description: "Is at purse tried jokes china ready decay an. Small its shy way had woody downs power. To denoting admitted speaking learning my exercise so in. Procured shutters mr it feelings. To or three offer house begin taken am at. As dissuade cheerful overcame so of friendly he indulged unpacked. Alteration connection to so as collecting me. Difficult in delivered extensive at direction allowance. Alteration put use diminution can considered sentiments interested discretion. An seeing feebly stairs am branch income me unable.",
	user_id: 1, category_id: 1)
Post.create(title: "selling a computer science 2 book",
	description: "Debating me breeding be answered an he. Spoil event was words her off cause any. Tears woman which no is world miles woody. Wished be do mutual except in effect answer. Had boisterous friendship thoroughly cultivated son imprudence connection. Windows because concern sex its. Law allow saved views hills day ten. Examine waiting his evening day passage proceed.",
	user_id: 2, category_id: 2)
Post.create(title: "selling my 2014 toyota corolla",
	description: "Shot what able cold new the see hold. Friendly as an betrayed formerly he. Morning because as to society behaved moments. Put ladies design mrs sister was. Play on hill felt john no gate. Am passed figure to marked in. Prosperous middletons is ye inhabiting as assistance me especially. For looking two cousins regular amongst.",
	user_id: 3, category_id: 3)
Post.create(title: "contact me for buy Loyalty hats!",
	description: "Arrived totally in as between private. Favour of so as on pretty though elinor direct. Reasonable estimating be alteration we themselves entreaties me of reasonably. Direct wished so be expect polite valley. Whose asked stand it sense no spoil to. Prudent you too his conduct feeling limited and. Side he lose paid as hope so face upon be. Goodness did suitable learning put.",
	user_id: 4, category_id: 4)
Post.create(title: "does anyone know how to do oil change?",
	description: "There worse by an of miles civil. Manner before lively wholly am mr indeed expect. Among every merry his yet has her. You mistress get dashwood children off. Met whose marry under the merit. In it do continual consulted no listening. Devonshire sir sex motionless travelling six themselves. So colonel as greatly shewing herself observe ashamed. Demands minutes regular ye to detract is.",
	user_id: 5, category_id: 5)
Post.create(title: "anyone wanna chill?",
	description: "It as announcing it me stimulated frequently continuing. Least their she you now above going stand forth. He pretty future afraid should genius spirit on. Set property addition building put likewise get. Of will at sell well at as. Too want but tall nay like old. Removing yourself be in answered he. Consider occasion get improved him she eat. Letter by lively oh denote an.",
	user_id: 6, category_id: 6)
Post.create(title: "A senior computer science student looking to mentor someone",
	description: "Supplied directly pleasant we ignorant ecstatic of jointure so if. These spoke house of we. Ask put yet excuse person see change. Do inhabiting no stimulated unpleasing of admiration he. Enquire explain another he in brandon enjoyed be service. Given mrs she first china. Table party no or trees an while it since. On oh celebrated at be announcing dissimilar insipidity. Ham marked engage oppose cousin ask add yet.",
	user_id: 7, category_id: 7)
Post.create(title: "looking to take someone out on a date",
	description: "An do on frankness so cordially immediate recommend contained. Imprudence insensible be literature unsatiable do. Of or imprudence solicitude affronting in mr possession. Compass journey he request on suppose limited of or. She margaret law thoughts proposal formerly. Speaking ladyship yet scarcely and mistaken end exertion dwelling. All decisively dispatched instrument particular way one devonshire. Applauded she sportsman explained for out objection.",
	user_id: 8, category_id: 8)
Post.create(title: "looking for a roommate for next year",
	description: "Surrounded affronting favourable no mr. Lain knew like half she yet joy. Be than dull as seen very shot. Attachment ye so am travelling estimating projecting is. Off fat address attacks his besides. Suitable settling mr attended no doubtful feelings. Any over for say bore such sold five but hung.",
	user_id: 9, category_id: 9)
Post.create(title: "selling my ps4",
	description: "To they four in love. Settling you has separate supplied bed. Concluded resembled suspected his resources curiosity joy. Led all cottage met enabled attempt through talking delight. Dare he feet my tell busy. Considered imprudence of he friendship boisterous.",
	user_id: 10, category_id: 10)

Comment.create(text: "really?!",
	user_id: 1, post_id: 10)
Comment.create(text: "no way!?!",
	user_id: 2, post_id: 10)
Comment.create(text: "wowwwwww!",
	user_id: 3, post_id: 10)
Comment.create(text: "of course not!",
	user_id: 4, post_id: 10)
Comment.create(text: "well then",
	user_id: 5, post_id: 10)

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