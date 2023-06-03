require 'rails_helper'

describe 'Splashes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get splash_index_path
      expect(response).to have_http_status(:success)
    end
  end
end
