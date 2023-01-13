# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DealersController, type: :controller do
  context 'GET #index' do
    it 'returns a 200 custom status code' do
      get :index
      expect(response).to have_http_status(200)
    end
    it 'returns status code 200' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
