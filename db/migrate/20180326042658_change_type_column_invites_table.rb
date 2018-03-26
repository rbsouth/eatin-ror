class ChangeTypeColumnInvitesTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :invites, :type
  	add_column :invites, :invite_type, :string
  end
end
