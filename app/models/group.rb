class Group < ApplicationRecord
	has_many :groupies, dependent: :destroy
	has_many :users, through: :groupies

	validates :name, :central_location, :latitude, :longitude, :radius, presence: true
	validates :name, uniqueness: { scope: [:user_id] }
	# validates :latitude, :longitude, numericality: { only_integer: true }
end