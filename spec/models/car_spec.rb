# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Car, type: :model do
  before do
    let(:car) { Car.new(:name) }
    it 'is invalid without name'
    expect(car.name).to_not nil
    car.valid?
    it 'be able to save car'
    expect(car.save).to eq(true)
  end
end
context 'scope test' do
  let(:params) { { name: 'Svyat', price: 100 } }
  before(:each) do
    Car.create(params)
    Car.create(params)
    Car.create(params.merge(active: false))
    Car.create(params.merge(active: false))
  end

  it 'should be able to select active cars' do
    expect(Car.active.count).to eq(3)

    it 'should be able to select active cars' do
      expect(Car.inactive.count).to eq(2)
    end
  end
end
