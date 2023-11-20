# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choice_id :bigint           not null
#  respondent_id    :bigint           not null
#
# Indexes
#
#  index_responses_on_answer_choice_id  (answer_choice_id)
#  index_responses_on_respondent_id     (respondent_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_choice_id => answer_choices.id)
#  fk_rails_...  (respondent_id => users.id)
#
class Response < ApplicationRecord

    belongs_to :respondent,
        foreign_key: :respondent_id,
        class_name: :User 

    

    
end   
