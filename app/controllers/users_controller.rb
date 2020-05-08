class UsersController < ApplicationController
  include UsersHelper
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:id] = @user.id
      redirect_to @user, notice: 'User created succesfuly'
    else
      render :new
    end
  end
end
