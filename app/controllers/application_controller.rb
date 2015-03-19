class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :cart

  protected

  def cart
    if cookies[:cart]
      cart = Cart.find(cookies[:cart])
      if cart.nil?
        cookies.delete :cart
      end
    end

      unless cookies[:cart]
        cart = Cart.create!
        cookies[:cart] = cart.id
      end
  end

  def is_authorized
    unless current_user
     return  redirect_to root_path
    end
  end
end
