class RemoveApiColumnsFromStudent < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :api_key, :string
  end
end
