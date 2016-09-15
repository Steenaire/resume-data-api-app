class MoveUsersColumnsToStudent < ActiveRecord::Migration[5.0]
  def change
    drop_table :users
    add_column :students, :api_key, :string
    add_column :students, :password_digest, :string
  end
end
