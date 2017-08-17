class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    # memoization
    # if there is a value stored in @user
    # it returns that user instance
    # if @user is nil
    # it executes the code on the right-hand side and
    # store it in @user.
    @user ||= User.find_by(id: session[:user_id])
  end

  private

  def admin?
    current_user.admin
  end
  
end
