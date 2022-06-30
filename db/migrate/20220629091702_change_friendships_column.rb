class ChangeFriendshipsColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :friendships, :friend_a, :friend_a_id
    rename_column :friendships, :friend_b, :friend_b_id
  end
end
