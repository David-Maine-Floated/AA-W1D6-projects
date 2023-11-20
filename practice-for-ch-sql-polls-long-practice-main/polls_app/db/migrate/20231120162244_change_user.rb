class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :username
    add_column :users, :username, :string 
    change_column :users, :username, :string, unique: true 
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
