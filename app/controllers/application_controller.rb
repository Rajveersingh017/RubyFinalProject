class ApplicationController < ActionController::Base
  before_action :authenticate_user! , :initialize_session
  helper_method :cart

  def initialize_session
    session[:shopping_cart] ||= [] # empty array
  end

  def cart
     Song.find(session[:shopping_cart] )
  end

end
