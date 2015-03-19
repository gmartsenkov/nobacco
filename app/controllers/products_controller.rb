class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

  def index
    @products = Product.all
    respond_with(@products)
  end

  def show
    respond_with(@product)
  end

  def new
    @product = Product.new
    @category = Category.friendly.find(params[:type])
    4.times{@product.additional_image.build}
    respond_with(@product)
  end

  def edit
    4.times{@product.additional_image.build}
    @category = @product.category
  end

  def create
    @product = Product.new(product_params)
    @product.colors = color(params[:red],params[:blue],params[:black],params[:inox])
    @product.nicotine = get_nicotine(params[:a],params[:b],params[:c],params[:d],params[:e])
    @product.save
    respond_with(@product)
  end

  def update
    @product.update(product_params)
    @product.colors = color(params[:red],params[:blue],params[:black],params[:inox])
    @product.nicotine = get_nicotine(params[:a],params[:b],params[:c],params[:d],params[:e])
    @product.save
    respond_with(@product)
  end

  def destroy
    @product.destroy
    respond_with(@product)
  end

  private

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

    def set_product
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :promotion, :category_id, :nicotine , :subcategory_id, :colors, :in_stock, :description, :image , additional_image_attributes: [:id,:image,:product_id] )
    end
end
