class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper

  before_action :require_login

  def require_login
    redirect_to login_path unless logged_in?
  end

  def number_to_currency number, options = {}
    options[:locale] ||= I18n.locale
    super number, options
  end
end 
