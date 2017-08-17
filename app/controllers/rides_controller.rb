class RidesController < ApplicationController

  def new
  end

  def create
    @attraction = Attraction.find_by(id: params[:id])
		@user = User.find_by(id: session[:user_id])
		@ride = Ride.new(user: @user, attraction: @attraction)
    @ride.take_ride
  end

end
