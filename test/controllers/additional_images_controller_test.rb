require 'test_helper'

class AdditionalImagesControllerTest < ActionController::TestCase
  setup do
    @additional_image = additional_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additional_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional_image" do
    assert_difference('AdditionalImage.count') do
      post :create, additional_image: { image: @additional_image.image, product_id: @additional_image.product_id }
    end

    assert_redirected_to additional_image_path(assigns(:additional_image))
  end

  test "should show additional_image" do
    get :show, id: @additional_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional_image
    assert_response :success
  end

  test "should update additional_image" do
    patch :update, id: @additional_image, additional_image: { image: @additional_image.image, product_id: @additional_image.product_id }
    assert_redirected_to additional_image_path(assigns(:additional_image))
  end

  test "should destroy additional_image" do
    assert_difference('AdditionalImage.count', -1) do
      delete :destroy, id: @additional_image
    end

    assert_redirected_to additional_images_path
  end
end
