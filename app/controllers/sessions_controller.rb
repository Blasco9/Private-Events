class SessionsController < ApplicationController
  include UsersHelper

  def new
  end

  def create
    @current_user = User.find_by(user_params)

    if @current_user
      flash[:notice] = 'Logged in successfuly'
      session[:id] = @current_user.id
      redirect_to @current_user
    else
      flash[:notice] = 'Invalid user name'
      redirect_to '/login'
    end
  end

  def destroy
    reset_session
    flash[:notice] = 'You logged out'
    redirect_to '/login'
  end
end
