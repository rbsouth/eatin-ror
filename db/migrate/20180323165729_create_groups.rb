class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :user
      t.string :name
      t.string :central_location
      t.decimal :latitude
      t.decimal :longitude
      t.integer :radius

      t.timestamps
    end
  end
end
