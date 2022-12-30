class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :cars_count
      t.integer :parent_id
      t.text :description
      t.timestamps
    end
  end
end
