require 'rails_helper'

describe Category, type: :model do
  it 'is valid with a name and icon' do
    category = Category.new(name: 'Food', icon: '<i class="fa-solid fa-bowl-food"></i>')
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category = Category.new(name: '', icon: '<i class="fa-solid fa-bowl-food"></i>')
    expect(category).to_not be_valid
  end

  it 'is not valid without a icon' do
    category = Category.new(name: 'Food', icon: '')
    expect(category).to_not be_valid
  end

  describe 'associations' do
    it { should have_many(:category_expenses) }
    it { should have_many(:expenses) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:name) }
  end
end
