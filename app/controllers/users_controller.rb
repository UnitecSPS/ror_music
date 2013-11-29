class UsersController < ApplicationController

  def new
    if current_user.email == "cgotcha@gmail.com"
      @user = User.new
    else
      redirect_to singers_path
    end
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to singers_path
    else
      render :new
    end
  end
end
