class GroupsController < ApplicationController
  require 'open-uri'
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
    @gmaps_api_response = JSON.parse(open("https://maps.googleapis.com/maps/api/geocode/json?address=" + group_params[:central_location]).read)
    @latitude = @gmaps_api_response['results'][0]['geometry']['location']['lat']
    @longitude = @gmaps_api_response['results'][0]['geometry']['location']['lng']
    if group_params[:length_unit] == 'Miles'
      @radius = group_params[:radius] * 1.60934
      @radius.round 
    else
      @radius = group_params[:radius]
    end
    @group = current_user.created_groups.new(user_id: group_params[:user_id], name: group_params[:name], central_location: group_params[:central_location],  latitude: @latitude, longitude: @longitude)
    # adds group to users groups or rerenders page
    if @group.save!
      current_user.groups << @group
      redirect_to @group
    else
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
    params.require(:group).permit(:user_id, :name, :central_location, :latitude, :longitude)
  end
end