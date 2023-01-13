# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  context 'GET #index' do
    it 'returns succes response' do
      get :index
      expect(response).to be_successful
    end
  end

  context 'GET #show' do
    let(:car) { Car.new(name: 'Svyat') }
    it 'returns succes response' do
      get :show, params: { id: car }
      expect(response).to be_successful
    end
  end
end
