class RenameAvatarFilename < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :avatar_filename, :avatar
  end
end
