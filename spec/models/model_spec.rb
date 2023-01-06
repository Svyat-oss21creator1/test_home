# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Model, type: :model do
  before(:each) do
    @model = Model.create!(name: 'BMW', cars_count: 1..3)

    describe 'validations' do
      it 'should not let a model without name' do
        @model.name = nil
        expect(@model).to_not be_valid
      end
    end
  end
end
