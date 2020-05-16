class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(session_params)

    if @user
      session[:id] = @user.id
      redirect_to @user, notice: 'Logged in successfuly'
    else
      redirect_to :login, notice: 'Invalid user name'
    end
  end

  def destroy
    reset_session
    redirect_to events_path, notice: 'You logged out'
  end

  private

  def session_params
    params.require(:user).permit(:username)
  end
end
