class RemoveIndexComment < ActiveRecord::Migration[7.0]
  def change
    remove_index :comments, column: ["commentable_type", "commentable_id"], name: "index_comments_on_commentable"
  end
end
