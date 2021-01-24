# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Todo.delete_all
Event.delete_all

User.create(name: "Asta", zip: "86337")

Todo.create(item: "Clean Bathroom", user_id: User.first.id)
Todo.create(item: "Lunch with Charmy", user_id: User.first.id)
Todo.create(item: "Fourth Workout", user_id: User.first.id)

Event.create(title: "Nero - Birth Anniversary", date:"06/18/2021", user_id: User.first.id)
Event.create(title: "Yuno & My - Birth Anniversary", date:"10/04/2021", user_id: User.first.id)