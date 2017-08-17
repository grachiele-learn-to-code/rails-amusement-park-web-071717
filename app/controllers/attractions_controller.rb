class AttractionsController < ApplicationController
	before_action :admin?, except: [:index, :show]


	def index	
	end

	def show	
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



	private

	def admin?
		user = User.find_by(id: session[:user_id])
		user.admin
	end

end
