class InvitesController < ApplicationController
  def create
  	@invite = Invite.new(invite_params)
    if @invite.save
      # should eventually be ajax
      redirect_to root_path
    else
      puts 'it aint wurk'
    end
  end

  def destroy
  	current_user.invites.find(params[:id]).destroy
  end

  private

  def invite_params
  	params.require(:invite).permit(:user_id, :sender_id, :invite_type)
  end
end
