class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.integer :friend_id
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
