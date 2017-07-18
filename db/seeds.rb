# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!({ 
	username: "AirMax2017", 
	email: "anneoboma@outlook.com", 
	password: "password", 
	first_name: "Anne", 
	last_name: "Oboma"})

user2 = User.create!({ 
	username: "UltraBoostTraitor", 
	email: "joeloboma@outlook.com", 
	password: "password", 
	first_name: "Joel", 
	last_name: "Oboma"})

post1 = Post.create!({
	title: "Amazing AirMax",
	body: "These shoes are amazing",
	date: Date.today,
	user_id: user1.id
	})
post1 = Post.create!({
	title: "I hate addidas",
	body: "I will shop at Nike for the rest of my life because I have no life",
	date: Date.today,
	user_id: user2.id
	})