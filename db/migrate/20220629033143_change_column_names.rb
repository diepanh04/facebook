class ChangeColumnNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :friend_requests, :user_id, :requester_id 
    rename_column :friend_requests, :friendship_id, :recipient_id
  end
end
