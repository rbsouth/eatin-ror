class Group < ApplicationRecord
	has_many :groupies, dependent: :destroy
	has_many :users, through: :groupies

	validates :name, :central_location, :latitude, :longitude, :radius, :length_unit, presence: true
	validates :name, uniqueness: { scope: [:user_id] }
	validates :radius, numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 81 }
	validates :latitude , numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
	validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

end