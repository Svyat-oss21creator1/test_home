# frozen_string_literal: true

RSpec.describe 'cars', type: :view do
  before(:each) do
    assign(:cars, [
             Car.create!(
               title: 'Title',
               description: 'MyText',
               download_url: 'Download Url',
               status: 'Status'
             )
           ])
  end
end
