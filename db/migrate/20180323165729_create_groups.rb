class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.refereces :user
      t.string :name

      t.timestamps
    end
  end
end
