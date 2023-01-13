# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ModelsController, type: :controller do
  before do
    describe 'request renders'
    let(:model) { Model.new(:name, :description) }
    it 'renders the application layout' do
      expect(model).to render_template('layouts/application')
    end

    it 'does not render a different layout' do
      expect(model).to_not render_template('layouts/admin')
    end
  end
end
