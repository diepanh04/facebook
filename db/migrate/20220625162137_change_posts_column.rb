class ChangePostsColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :user_id, :creator_id 
  end
end
