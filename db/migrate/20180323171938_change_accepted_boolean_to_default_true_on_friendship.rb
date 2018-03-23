class ChangeAcceptedBooleanToDefaultTrueOnFriendship < ActiveRecord::Migration[5.2]
  def change
  	remove_column :friendships, :accepted
  	add_column :friendships, :accepted, :boolean, default: false
  end
end