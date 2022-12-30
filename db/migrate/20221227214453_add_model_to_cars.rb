class AddModelToCars < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :model, null: true, foreign_key: true
  end
end
