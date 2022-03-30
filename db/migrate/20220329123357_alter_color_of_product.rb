class AlterColorOfProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :color
    add_column :products, :color, :string, array: true, default: []
  end
end
