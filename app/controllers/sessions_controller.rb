class SessionsController < ApplicationController
  include UsersHelper

  def new
  end

  def create
    @user = User.find_by(user_params)

    if @user
      flash[:notice] = 'Logged in successfuly'
      session[:id] = @user.id
      redirect_to @user
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
