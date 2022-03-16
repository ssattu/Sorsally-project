class UpdateImageToProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :images
    add_column :products, :images, :string, array: true, default: []


  end
end
