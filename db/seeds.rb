# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
User.create(
  name: 'John',
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
)

Category.destroy_all
Category.create!(name: 'Food', icon: 'food')
Category.create!(name: 'Gas', icon: 'gas')
Category.create!(name: 'Phone', icon: 'phone')