# frozen_string_literal: true

RSpec.describe 'cars/index', type: :view do
  let(:user) { User.first }

  before do
    @cars = assign(:cars, Car.limit(3))
  end

  context 'when user is signed in' do
    before do
      # mock current_user
      allow(view).to receive(:current_user).and_return(user)
    end
  end
end
