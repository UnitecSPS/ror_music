class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  helper_method :current_user

  def current_user
    if session[:user_id].present?
      @current_user ||= User.find(session[:user_id])
    end
  end

  protected

  def authenticate
    #authenticate_or_request_with_http_basic do |username, password|
      #username == "foo" && password == "bar"
    #end
    if session[:user_id].blank?
      redirect_to home_login_path
    end
  end
end
