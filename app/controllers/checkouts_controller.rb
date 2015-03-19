class CheckoutsController < ApplicationController
  before_action :set_checkout, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @checkouts = Checkout.all
    return is_authorized
    respond_with(@checkouts)
  end

  def show
    return is_authorized
    respond_with(@checkout)
  end

  def new
    @checkout = Checkout.new
    respond_with(@checkout)
  end

  def edit
  end

  def create
    @checkout = Checkout.new(checkout_params)
    @checkout.save
    respond_with(@checkout)
  end

  def update
    @checkout.update(checkout_params)
    respond_with(@checkout)
  end

  def destroy
    @checkout.destroy
    respond_with(@checkout)
  end

  private
    def set_checkout
      @checkout = Checkout.find(params[:id])
    end

    def checkout_params
      params.require(:checkout).permit(:cart_id, :name, :telephone, :adress, :city, :email, :delivery_type , :info)
    end
end
