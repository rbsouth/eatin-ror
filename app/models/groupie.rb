class Groupie < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :challenges, dependent: :destroy

  validates :user_id, :group_id, presence: true
  validates :user_id, uniqueness: { scope: [:group_id] }
end