require 'test_helper'

class InCartsControllerTest < ActionController::TestCase
  setup do
    @in_cart = in_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:in_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create in_cart" do
    assert_difference('InCart.count') do
      post :create, in_cart: { cart_id: @in_cart.cart_id, color: @in_cart.color, product_id: @in_cart.product_id, quantity: @in_cart.quantity }
    end

    assert_redirected_to in_cart_path(assigns(:in_cart))
  end

  test "should show in_cart" do
    get :show, id: @in_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @in_cart
    assert_response :success
  end

  test "should update in_cart" do
    patch :update, id: @in_cart, in_cart: { cart_id: @in_cart.cart_id, color: @in_cart.color, product_id: @in_cart.product_id, quantity: @in_cart.quantity }
    assert_redirected_to in_cart_path(assigns(:in_cart))
  end

  test "should destroy in_cart" do
    assert_difference('InCart.count', -1) do
      delete :destroy, id: @in_cart
    end

    assert_redirected_to in_carts_path
  end
end
