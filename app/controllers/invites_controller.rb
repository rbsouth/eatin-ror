class InvitesController < ApplicationController
  def create
  	@invite = Invite.new(invite_params)
  end

  def destroy
  	current_user.invites.find(params[:id]).destroy
  end

  private

  def invite_params
  	params.require(:invite).permit(:user_id, :sender_id, :type)
  end
end
