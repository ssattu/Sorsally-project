class AddMessageToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :message, :string
  end
end
