class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :groupies
  has_many :groups, through: :groupies
  has_many :created_groups, class_name: "Group", foreign_key: "user_id"
  has_many :invites
  has_many :friendships
  has_many :friends, through: :friendships
	has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
	has_many :inverse_friends, through: :inverse_friendships, source: :user
  
  validates :first_name, :username, :email, :password, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def friendship_requests
    Friendship.where(friend_id: self.id).where(accepted: false)
  end

  def accept_friendship(user_id)
    Friendship.find_by(user_id: user_id, friend_id: self.id).update_attributes(accepted: true)
  end
end