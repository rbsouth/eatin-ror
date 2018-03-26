class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@invites = @user.invites.all
  	@invite = Invite.find(params[:id])
  	@sender = User.find_by(id: @invite.sender_id)
  end
end