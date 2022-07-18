class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password, :string
    add_column :users, :confirmation_password, :string
  end
end
