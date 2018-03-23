class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :location
      t.string :food
      t.datetime :due_by
      t.boolean :complete
      t.groupie :references

      t.timestamps
    end
  end
end
