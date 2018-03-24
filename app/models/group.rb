class Group < ApplicationRecord
	has_many :groupies
	has_many :users, through: :groupies

	validates :name, presence: true
end
