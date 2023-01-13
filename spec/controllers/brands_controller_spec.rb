# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Brand, type: :controller do
  before do
    let(:brand) { Brand.new(:name, :description) }
    it 'renders the application layout' do
      expect(brand).to render_template('layouts/application')
    end

    it 'does not render a different layout' do
      expect(brand).to_not render_template('layouts/admin')
    end
  end
end
