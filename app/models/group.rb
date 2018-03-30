class Group < ApplicationRecord
	has_many :groupies, dependent: :destroy
	has_many :users, through: :groupies

	before_validation :radius_max

	validates :name, :central_location, :latitude, :longitude, :radius, :length_unit, presence: true
	validates :name, uniqueness: { scope: [:user_id] }
	validates :radius, numericality: { only_integer: true, greater_than_or_equal_to: 5, less_than_or_equal_to: 81 }
	validates :latitude, :longitude, numericality: { only_integer: true }

	def radius_max
		if :radius > 81
			:radius = 80
		end
	end

end