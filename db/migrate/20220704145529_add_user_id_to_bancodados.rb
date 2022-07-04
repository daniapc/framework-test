class AddUserIdToBancodados < ActiveRecord::Migration[7.0]
  def change
    add_column :bancodados, :user_id, :integer
    add_index :bancodados, :user_id
  end
end
