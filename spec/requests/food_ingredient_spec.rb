require 'rails_helper'

RSpec.describe 'FoodIngredients', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/food_ingredient/new'
      expect(response).to have_http_status(:success)
    end
  end
end
