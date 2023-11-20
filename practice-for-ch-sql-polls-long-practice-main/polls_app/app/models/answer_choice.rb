# == Schema Information
#
# Table name: answer_choices
#
#  id           :bigint           not null, primary key
#  text         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  questions_id :bigint           not null
#
# Indexes
#
#  index_answer_choices_on_questions_id  (questions_id)
#
# Foreign Keys
#
#  fk_rails_...  (questions_id => questions.id)
#
class AnswerChoice < ApplicationRecord
    validates :text, presence: true 

    belongs_to :question,
        foreign_key: :questions_id,
        class_name: :Question 

    has_many :responses,
        foreign_key: :answer_choice_id,
        class_name: :Response 
    
  
end    
