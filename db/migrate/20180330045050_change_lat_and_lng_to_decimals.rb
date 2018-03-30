class ChangeLatAndLngToDecimals < ActiveRecord::Migration[5.2]
  def change
  	remove_column :groups, :latitude, 
  	remove_column :groups, :longitude, 
  	add_column :groups, :latitude, :decimal
  	add_column :groups, :longitude, :decimal
  end
end