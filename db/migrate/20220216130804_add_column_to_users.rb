class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :zip_code, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
  end
end
