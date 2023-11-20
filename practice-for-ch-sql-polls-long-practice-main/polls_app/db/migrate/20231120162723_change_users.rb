class ChangeUsers < ActiveRecord::Migration[7.1]
  def change
    drop_table :users 
     create_table :users do |t|
      t.string :username, index: {unique: true}
      t.timestamps
    end
  end
end
