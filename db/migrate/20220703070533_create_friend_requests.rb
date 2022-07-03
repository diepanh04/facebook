class CreateFriendRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_requests do |t|
      t.integer :recipient_id
      t.integer :requester_id

      t.timestamps
    end
  end
end
