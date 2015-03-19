class HomeController < ApplicationController
  def index
  end

  def control_panel
  end

  def contact_us
  end

  def cart
    @cart = Cart.find(cookies[:cart]) if cookies[:cart]
  end


end
