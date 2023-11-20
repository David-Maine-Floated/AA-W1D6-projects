class CreateResponse < ActiveRecord::Migration[7.1]
  def change
    create_table :responses do |t|
      t.references :respondent, null: false, foreign_key: {to_table: :users}
      t.references :answer_choice, null:false, foreign_key: {to_table: :answer_choices}
      t.timestamps
    end
  end
end
