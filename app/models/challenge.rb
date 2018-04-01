class Challenge < ApplicationRecord
	belongs_to :groupie
	serialize :recipe_data
end