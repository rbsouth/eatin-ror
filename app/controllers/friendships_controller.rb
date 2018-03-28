class FriendshipsController < ApplicationController
  def create
    respond_to do |format|
      @friendship = current_user.friendships.new(friendship_params)
      if @friendship.save
        if params[:accepted]
          current_user.accept_friendship(params[:friend_id])
        end
        flash[:notice] = "Added friend."
        format.js
      else
        flash[:notice] = "Unable to add friend."
        redirect_to root_url
      end
    end
  end

  def destroy
  	current_user.friendships.find(params[:id]).destroy
  	flash[:notice] = "Removed friendship."
  	redirect_to current_user
  end

  private

  def friendship_params
    params.permit(:friend_id, :accepted)
  end
end
