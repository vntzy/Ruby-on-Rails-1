class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.decimal :price
      t.integer :quantity
    end
  end
end
