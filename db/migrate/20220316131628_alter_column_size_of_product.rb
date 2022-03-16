class AlterColumnSizeOfProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :size
    add_column :products, :size, :string, array: true, default: []
  end
end
