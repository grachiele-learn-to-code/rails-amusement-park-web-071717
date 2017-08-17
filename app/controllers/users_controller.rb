class UsersController < ApplicationController
  before_action :require_login, only: [:show]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def show
    @user = find_user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :nausea, :happiness, :tickets, :height, :admin)
  end

  def find_user
    User.find_by(id: params[:id])
  end

  def require_login
    redirect_to '/' unless session[:user_id]
  end

end
