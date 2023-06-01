require 'rails_helper'

RSpec.describe 'Expenses', type: :request do
  describe 'GET /new' do
    let(:user) do
      User.create(
        name: 'John',
        email: "#{Faker::Name.first_name}@test.com",
        password: 'password',
        password_confirmation: 'password'
      )
    end

    let(:category) { Category.create(name: 'Food', icon: 'food') }

    before do
      sign_in user
    end

    it 'returns http success' do
      get new_category_expense_path(category)
      expect(response).to have_http_status(:success)
    end
  end
end
