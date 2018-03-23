class Group < ApplicationRecord
	has_many :users, through: :groupies

	validates :user_id, :name, presence: true
end
