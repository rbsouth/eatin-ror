class GroupsController < ApplicationController
  # Shows all groups current user is a groupie in
  def index
    @groups = current_user.groups
  end

  # shows specified group
  def show
    @group = current_user.groups.find(params[:id])
  end

  # CREATED_GROUPS defined in model, allows admin privilages
  # form for creating group
  def new
    @group = current_user.created_groups.new
  end

  # creates group
  def create
    p params
    @group = current_user.created_groups.new(group_params)
    if @group.save
      # adds user into group or rerenders page
      current_user.groups << @group
      puts "yay"
      redirect_to @group
    else
      puts "noooooo"
      render :new
    end
  end

  # form for updating group
  def edit
    @group = current_user.created_groups.find(params[:id])
  end

  def update
    @group = current_user.created_groups.find(params[:id])
    @group.update_attributes(group_params)
  end

  def destroy
    current_user.created_groups.find(params[:id]).destroy
  end

  private

  def group_params
    params.require(:group).permit(:user_id, :name)
  end
end
