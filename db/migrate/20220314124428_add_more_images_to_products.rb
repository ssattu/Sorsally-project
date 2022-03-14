class AddMoreImagesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :preview_image, :string
  end
end
