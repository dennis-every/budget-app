require 'rails_helper'

describe User, type: :model do
  it 'is valid with a name' do
    user = User.new(name: 'John')
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
end
