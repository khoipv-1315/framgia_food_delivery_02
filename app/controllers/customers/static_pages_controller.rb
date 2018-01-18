class Customers::StaticPagesController < ApplicationController
  skip_before_action :require_login

  def contact; end

  def error; end
end
