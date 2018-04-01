class AddLatAndLngToChallenges < ActiveRecord::Migration[5.2]
  def change
  	add_column :challenges, :latitude, :decimal
  	add_column :challenges, :longitude, :decimal
  end
end
