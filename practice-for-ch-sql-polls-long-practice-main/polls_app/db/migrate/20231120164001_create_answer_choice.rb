class CreateAnswerChoice < ActiveRecord::Migration[7.1]
  def change
    create_table :answer_choices do |t|
      t.string :text, null: false 
      t.references :questions, null: false, foreign_key: {to_table: :questions}
      t.timestamps
    end
  end
end
