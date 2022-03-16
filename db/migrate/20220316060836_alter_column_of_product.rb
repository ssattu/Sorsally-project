class AlterColumnOfProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :preview_image
    add_column :products, :preview_images, :string, array: true, default: []
  end
end
