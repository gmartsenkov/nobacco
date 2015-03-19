module CartsHelper

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

end
