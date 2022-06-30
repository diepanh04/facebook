class DeleteColumnLike < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :likable_id
  end
end
