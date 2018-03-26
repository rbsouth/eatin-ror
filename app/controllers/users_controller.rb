class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@invites = @user.invites.all
  	@sender = User.find(params[:sender_id])
  end
end