# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |t|
	Company.create(name:"cocacola #{t}")
end

30.times do |t|
	User.create(name:"hbastian #{t}", email:"hbastian@gamail.com", password:"123456")
end

250.times do |t|
	Claim.create(claim:"raclamo #{t}")
end			