class AttractionsController < ApplicationController
	before_action :admin?, except: [:index, :show]

	def index
		@attractions = Attraction.all
	end

	def show
		@attraction = Attraction.find_by(id: params[:id])
		# @user = User.find_by(id: session[:user_id])
		# @ride = Ride.new(user_id: @user.id, attraction_id: @attraction.id)
	end

	def new
		@attraction = Attraction.new
	end

	def create
		@attraction = Attraction.create(attraction_params)
		redirect_to @attraction
	end

	def edit
		@attraction = Attraction.find_by(id: params[:id])
	end

	def update
		@attraction = Attraction.find_by(id: params[:id])
		@attraction.update(attraction_params)
		redirect_to @attraction
	end

	def destroy
	end


	def attraction_params
		params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
	end



end
