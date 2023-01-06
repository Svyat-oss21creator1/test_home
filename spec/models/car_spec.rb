# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Car, type: :model do
  before(:each) do
    @cars = Car.create!(name: 'BMW')

    describe 'validations' do
      it 'should not let a car without name' do
        @cars.name = nil
        expect(@cars).to_not be_valid

        describe 'validations' do
          it 'should not let a car without price' do
            @cars.price = nil
            expect(@cars).to_not be_valid
          end
        end
      end
    end
  end
end
