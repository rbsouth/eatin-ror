class Groupie < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :challenges
end
