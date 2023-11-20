# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_polls_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Poll < ApplicationRecord
    # validates :title, presence: true
    validates :title, presence: true 
    # belongs_to :author, 
    belongs_to :author,
        foreign_key: :user_id, 
        class_name: :User

    has_many :questions, 
        foreign_key: :polls_id,
        class_name: :Question 

    

end
