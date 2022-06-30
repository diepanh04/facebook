class AddBirthday < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :birthday, :date 
    add_column :users, :occupation, :string
    add_column :users, :location, :string 
  end
end
