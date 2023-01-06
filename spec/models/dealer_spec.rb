# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Dealer, type: :model do
  before(:each) do
    @dealer = Dealer.create!(name: 'Svyat')

    describe 'validations' do
      it 'should not let without name' do
        @dealer.name = nil
        expect(@dealer).to_not be_valid
      end
    end
  end
end
