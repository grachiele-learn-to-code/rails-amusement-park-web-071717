class RidesController < ApplicationController

  def new
  end

  def create
    @attraction = Attraction.find_by(id: params[:ride][:attraction_id])
		@user = User.find_by(id: session[:user_id])
		@ride = Ride.create(user: @user, attraction: @attraction)
    flash[:message] = @ride.take_ride
    redirect_to user_path(@user)
  end

end
