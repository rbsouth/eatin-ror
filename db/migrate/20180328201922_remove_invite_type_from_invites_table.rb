class RemoveInviteTypeFromInvitesTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :invites, :invite_type
  end
end
