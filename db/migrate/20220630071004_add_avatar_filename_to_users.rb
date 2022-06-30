class AddAvatarFilenameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar_filename, :string
  end
end
