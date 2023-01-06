# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Brand, type: :model do
  before(:each) do
    @brands = Brand.create!(name: 'BMW')

    describe 'validations' do
      it 'should not let a brand without name' do
        @brand.name = nil
        expect(@brand).to_not be_valid
      end
    end
  end
end
