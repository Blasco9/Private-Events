class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    return unless session[:id]
    @current_user ||= User.find_by_username(params[:username])
  end
end
