class CreateQuestion < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :text, null: false 
      t.references :polls, foreign_key: {to_table: :polls}, null: false 
      t.timestamps
    end
  end
end
