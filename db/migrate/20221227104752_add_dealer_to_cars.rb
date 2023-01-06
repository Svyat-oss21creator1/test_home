# frozen_string_literal: true

class AddDealerToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :dealer, null: false, foreign_key: true
  end
end
