class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :color
      t.integer :quantity
      t.integer :gender
      t.string :images
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
