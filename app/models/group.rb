class Group < ApplicationRecord
	has_many :users, through: :groupies
end
