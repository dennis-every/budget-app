# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
user = User.create(
  name: 'John',
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
)

Category.destroy_all
category = Category.create!(name: 'Groceries', icon: 'food')
Expense.destroy_all
10.times do
  expense = Expense.new(name: Faker::Food.fruits, amount: rand(0.5..10.0) ,author: user, category_ids: [category.id])
  expense.save!
end
category = Category.create!(name: 'Books', icon: 'books')
10.times do
  expense = Expense.new(name: Faker::Book.title, amount: rand(0.5..10.0), author: user, category_ids: [category.id])
  expense.save!
end
category = Category.create!(name: 'Movies', icon: 'movies')
10.times do
  expense = Expense.new(name: Faker::Movie.title, amount: rand(0.5..10.0), author: user, category_ids: [category.id])
  expense.save!
end