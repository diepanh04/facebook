class ChangeColumnNamePosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :user_id, :likable_id
  end
end
