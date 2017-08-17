class RidesController < ApplicationController

  def new
  end

  def create
    # @attraction = Attraction.find_by(id: params[:id])
		# @user = User.find_by(id: session[:user_id])
		@ride = Ride.create(user: @user, attraction: @attraction)
    # @ride.take_ride
    redirect_to user_path
  end

end
