class AddLocationToGroupsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :groups, :central_location, :string
  end
end
