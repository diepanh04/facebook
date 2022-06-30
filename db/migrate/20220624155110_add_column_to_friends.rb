class AddColumnToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :user_id, :integer
  end
end
