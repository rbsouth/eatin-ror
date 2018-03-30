class AddLatitudeAndLongitudeToGroupsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :groups, :latitude, :integer
  	add_column :groups, :longitude, :integer
  end
end
