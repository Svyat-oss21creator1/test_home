# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Brand, type: :model do
  before do
    let(:brand) { Brand.new(:name, :email) }
    describe 'validations' do
      it 'name eq name' do
        expect(brand.name).to eq 'Svyat'
      end
      it 'is not valid without name' do
        expect(brand).to_not be_valid
      end
      it 'is not valid if name is not 4 chars' do
        expect(brand.name.length).to eq(4)
      end
    end
  end
end
