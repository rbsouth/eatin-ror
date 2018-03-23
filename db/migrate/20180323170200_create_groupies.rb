class CreateGroupies < ActiveRecord::Migration[5.2]
  def change
    create_table :groupies do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
