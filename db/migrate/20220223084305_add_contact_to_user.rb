class AddContactToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :contact, :string
  end
end
