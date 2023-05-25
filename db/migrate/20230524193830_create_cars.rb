class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand, null:false
      t.string :model, null:false
      t.decimal :price, null:false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
