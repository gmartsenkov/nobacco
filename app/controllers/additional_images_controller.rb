class AdditionalImagesController < ApplicationController
  before_action :set_additional_image, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @additional_images = AdditionalImage.all
    return is_authorized
    respond_with(@additional_images)
  end

  def show
    return is_authorized
    respond_with(@additional_image)
  end

  def new
    @additional_image = AdditionalImage.new
    respond_with(@additional_image)
  end

  def edit
  end

  def create
    @additional_image = AdditionalImage.new(additional_image_params)
    @additional_image.save
    respond_with(@additional_image)
  end

  def update
    @additional_image.update(additional_image_params)
    respond_with(@additional_image)
  end

  def destroy
    @additional_image.destroy
    respond_with(@additional_image)
  end

  private
    def set_additional_image
      @additional_image = AdditionalImage.find(params[:id])
    end

    def additional_image_params
      params.require(:additional_image).permit(:image, :product_id)
    end
end
