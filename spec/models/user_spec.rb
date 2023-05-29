require 'rails_helper'

describe User, type: :model do
  it 'is valid with a name' do
    user = User.new(name: 'John', email: "#{Faker::Name.first_name}@test.com", password: 'password',
                    password_confirmation: 'password')
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(name: '', email: "#{Faker::Name.first_name}@test.com", password: 'password',
                    password_confirmation: 'password')
    expect(user).to_not be_valid
  end
end
