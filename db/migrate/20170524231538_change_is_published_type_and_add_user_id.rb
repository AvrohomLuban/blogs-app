class ChangeIsPublishedTypeAndAddUserId < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :is_published, :string
    add_column :posts, :userid, :integer
    add_column :posts, :is_published, :boolean

  end
end
