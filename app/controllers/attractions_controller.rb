class AttractionsController < ApplicationController

	def index
		@attractions = Attraction.all
	end

	def show
		@attraction = Attraction.find_by(id: params[:id])
		# @user = User.find_by(id: session[:user_id])
		# @ride = Ride.new(user_id: @user.id, attraction_id: @attraction.id)
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end



end
