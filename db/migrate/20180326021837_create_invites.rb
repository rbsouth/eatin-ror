class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.references :user, foreign_key: true
      t.integer :sender_id
      t.string :type

      t.timestamps
    end
  end
end
