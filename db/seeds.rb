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
category = Category.create!(name: 'Groceries', icon: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg')
Expense.destroy_all
10.times do
  expense = Expense.new(name: Faker::Food.fruits, amount: rand(0.5..10.0) ,author: user, category_ids: [category.id])
  expense.save!
end
category = Category.create!(name: 'Books', icon: 'https://media.istockphoto.com/id/628925698/vector/pile-of-hardcover-books.jpg?s=612x612&w=0&k=20&c=UskxzCZAQ4LXrgMhgW3M8Q5jdtWFPZ8WxwosF6h6euI=')
10.times do
  expense = Expense.new(name: Faker::Book.title, amount: rand(0.5..10.0), author: user, category_ids: [category.id])
  expense.save!
end
category = Category.create!(name: 'Movies', icon: 'https://hips.hearstapps.com/hmg-prod/images/summer-movies-1587392939.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*')
10.times do
  expense = Expense.new(name: Faker::Movie.title, amount: rand(0.5..10.0), author: user, category_ids: [category.id])
  expense.save!
end