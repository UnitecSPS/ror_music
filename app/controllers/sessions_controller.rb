class SessionsController < ApplicationController
  skip_before_filter :authenticate
  layout "home"
  
  def new
    if session[:user_id]
      redirect_to singers_path
    end
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      login
      redirect_to singers_path
    else
      flash[:notice] = "User or Password no match"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def login
    cookies.permanent.signed[:email] = @user.email
    session[:user_id] = @user.id
  end
end
