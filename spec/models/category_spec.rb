require 'rails_helper'

describe Category, type: :model do
  it 'is valid with a name and icon' do
    category = Category.new(name: "Food #{rand}", icon: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg')
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category = Category.new(name: '', icon: 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Good_Food_Display_-_NCI_Visuals_Online.jpg')
    expect(category).to_not be_valid
  end

  it 'is not valid without a icon' do
    category = Category.new(name: "Food #{rand}", icon: '')
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
