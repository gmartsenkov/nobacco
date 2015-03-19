class InCartsController < ApplicationController
  before_action :set_in_cart, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @in_carts = InCart.all
    return is_authorized
    respond_with(@in_carts)
  end

  def show
    return is_authorized
    respond_with(@in_cart)
  end

  def new
    @product = Product.find(params[:product])
    @in_cart = InCart.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
  end

  def create
    @in_cart = InCart.new(in_cart_params)
    @in_cart.cart_id = cookies[:cart]
    @in_cart.color = color(params[:red],params[:blue],params[:black],params[:inox])
    @in_cart.nicotine = get_nicotine(params[:a],params[:b],params[:c],params[:d],params[:e])
    @in_cart.save
    flash[:notice] = "#{@in_cart.product.name} беше успешно добавен в кошницата ви!"
    respond_to do |format|
      format.html{redirect_to(@in_cart.product)}
    end
  end

  def update
    @in_cart.update(in_cart_params)
    respond_with(@in_cart)
  end

  def destroy
    @in_cart.destroy
    respond_to do |format|
    format.html {redirect_to user_cart_path}
    end
  end

  private
    def set_in_cart
      @in_cart = InCart.find(params[:id])
    end

    def in_cart_params
      params.require(:in_cart).permit(:cart_id, :product_id, :quantity, :color)
    end

    def color(red,blue,black,inox)
      color = ""
      if red
        color += "r"
      end
      if blue
        color += "b"
      end
      if black
        color += "c"
      end
      if inox
        color += "i"
      end
      return color
    end

    def get_nicotine(a,b,c,d,e)
      nicotine = ""
      if a
        nicotine += a.to_s
      end
      if b
        nicotine += b.to_s
      end
      if c
        nicotine += c.to_s
      end
      if d
        nicotine += d.to_s
      end
      if e
        nicotine += e.to_s
      end
      return nicotine.to_s
    end
end
