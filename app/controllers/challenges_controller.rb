class ChallengesController < ApplicationController
  require 'net/http'
  require 'uri'
  def index
  end

  def show
  end

  def new
  end

  def create
    @groups = Group.all
    @style = 'short'
    @size = 'cities1000'
    @maxRows = '50'
    @username = 'rbsouth'
    @groups.each do |group|
      @radius = group.radius.to_s
      @latitude = group.latitude.to_s
      @longitude = group.longitude.to_s

      # Get random city
      @geonames_api_call = JSON.parse(open("http://api.geonames.org/findNearbyPlaceNameJSON?lat=" + @latitude + "&lng=" + @longitude + "&style=" + @style + "&cities=" + @size + "&radius=" + @radius + "&maxRows=" + @maxRows + "&username=" + @username).read)
      @city = @geonames_api_call["geonames"].sample
      @city_name = @city["name"]
      @city_lat = @city["lat"].to_f
      @city_lng = @city["lng"].to_f

      # Get random food
      @foods = ['any', 'burger', 'burrito', 'cake', 'candy', 'chicken', 'donut', 'fries', 'ice_cream', 'pizza', 'taco']
      group.groupies.each do |groupie|
        @challenge = groupie.challenges.new(location: @city_name, food: @foods.sample, due_by: 24.hours.from_now, latitude: @city_lat, longitude: @city_lng)
        if @challenge.save
          render :new
        else
          redirect_to challenges_path
        end
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
