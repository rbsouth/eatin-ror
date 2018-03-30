class AddDistanceSelectorToGroupsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :groups, :length_unit, :string
  end
end
