class Group < ApplicationRecord
	has_many :groupies
	has_many :users, through: :groupies

	validates :name, :user_id, :central_location, :latitude, :longitude, presence: true
	validates :name, uniqueness: { scope: [:user_id] }
	validates :latitude, :longitude, numericality: { only_integer: true }
end
