class CreatePoll < ActiveRecord::Migration[7.1]
  def change
    create_table :polls do |t|
      t.references :user, foreign_key: {to_table: :users}, null: false 
      t.string :title, null: false 
      t.timestamps
    end
  end
end
