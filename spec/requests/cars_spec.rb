# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  context 'test ' do
    it 'display all' do
      get :index
    end
  end
end
