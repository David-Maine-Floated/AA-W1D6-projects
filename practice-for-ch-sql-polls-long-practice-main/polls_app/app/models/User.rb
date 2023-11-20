# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_username  (username) UNIQUE
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true  

    has_many :authored_polls, 
        foreign_key: :user_id,
        class_name: :Polls 

    has_many :responses,
        foreign_key: :respondent_id,
        class_name: :Response 


end    
