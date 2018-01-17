class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper

  before_action :require_login

  def require_login
    redirect_to login_path unless logged_in?
  end
end 
