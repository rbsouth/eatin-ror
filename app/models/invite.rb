class Invite < ApplicationRecord
  belongs_to :user

  validates :user_id, :sender_id, :invite_type, presence: true

  if :invite_type == 'group request'
  	validates :group_id, presence: true
  end

end
