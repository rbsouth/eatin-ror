class Challenge < ApplicationRecord
	belongs_to :groupie

	# validate other challenges due_by have passed
	# destroy any challenges with completed: false and due_by: past time

	validates :location, :food, :due_by, :latitude, :longitude, presence: true
	validates :latitude , numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
	validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end