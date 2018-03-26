class Invite < ApplicationRecord
  belongs_to :user

  validates :user_id, :sender_id, :type, presence: true

  if :type == 'group request'
  	validates :group_id, presence: true
  end
  
end
