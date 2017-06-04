class RemoveBoolean < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :boolean, :string
  end
end
