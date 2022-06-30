class RemoveForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key "friend_requests", "friendships"
    remove_foreign_key "friend_requests", "users"
    remove_foreign_key "friendships", "users", column: "users_id"
  end
end
