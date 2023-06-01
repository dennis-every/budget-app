require 'rails_helper'

describe Expense, type: :model do
  user = User.create!(name: 'John', email: "#{Faker::Name.first_name}@test.com", password: 'password',
                      password_confirmation: 'password')
  category = Category.create!(name: Faker::Food.fruits, icon: 'food')
  it 'is valid with a name, amount, author, and at least one category' do
    expense = Expense.new(name: 'Cheeseburger', amount: '2.99', author: user, category_ids: [category.id])
    expect(expense).to be_valid
  end

  it 'is not valid without a name' do
    expense = category.expenses.build(name: '', amount: '2.99', author: user)
    expect(expense).to_not be_valid
  end

  it 'is not valid without a amount' do
    expense = category.expenses.build(name: 'Cheeseburger', amount: '', author: user)
    expect(expense).to_not be_valid
  end

  it 'is not valid without an author' do
    expense = category.expenses.build(name: 'Cheeseburger', amount: '2.99', author_id: '')
    expect(expense).to_not be_valid
  end

  it 'is not valid without at least one category' do
    expense = Expense.new(name: 'Cheeseburger', amount: '2.99', author: user)
    expect(expense).to_not be_valid
  end

  describe 'associations' do
    it { should have_many(:category_expenses) }
    it { should have_many(:categories) }
  end
end
