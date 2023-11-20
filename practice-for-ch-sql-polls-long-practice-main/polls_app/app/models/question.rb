# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  polls_id   :bigint           not null
#
# Indexes
#
#  index_questions_on_polls_id  (polls_id)
#
# Foreign Keys
#
#  fk_rails_...  (polls_id => polls.id)
#
class Question < ApplicationRecord
    validates :text, presence: true


    #also why isn't my annotate working

    has_many :answer_choices,
        foreign_key: :questions_id,
        class_name: :AnswerChoice  #????

    belongs_to :poll,
        foreign_key: :polls_id,
        class_name: :Poll 

end    
