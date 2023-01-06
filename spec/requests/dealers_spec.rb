# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DealersController, type: :controller do
  context 'test' do
    it 'displays all dealers' do
      get :index
    end
  end
end
