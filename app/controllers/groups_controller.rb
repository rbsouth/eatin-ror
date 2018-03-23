class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      puts "yay"
      redirect_to @group
    else
      puts "noooooo"
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update_attributes(group_params)
  end

  def destroy
    Group.find(params[:id]).destroy
  end

  private

  def group_params
    params.require(:group).permit(:user_id, :name)
  end
end
