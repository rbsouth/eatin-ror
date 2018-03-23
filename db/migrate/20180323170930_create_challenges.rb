class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :location
      t.string :food
      t.datetime :due_by
      t.boolean :complete, default: false
      t.references :groupie, foreign_key: true

      t.timestamps
    end
  end
end
