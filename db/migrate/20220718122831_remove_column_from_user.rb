class RemoveColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :confirmation_password, :string
  end
end
