require 'test_helper'

class CoinFlipsControllerTest < ActionController::TestCase
  setup do
    @coin_flip = coin_flips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coin_flips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coin_flip" do
    assert_difference('CoinFlip.count') do
      post :create, coin_flip: { name: @coin_flip.name }
    end

    assert_redirected_to coin_flip_path(assigns(:coin_flip))
  end

  test "should show coin_flip" do
    get :show, id: @coin_flip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coin_flip
    assert_response :success
  end

  test "should update coin_flip" do
    patch :update, id: @coin_flip, coin_flip: { name: @coin_flip.name }
    assert_redirected_to coin_flip_path(assigns(:coin_flip))
  end

  test "should destroy coin_flip" do
    assert_difference('CoinFlip.count', -1) do
      delete :destroy, id: @coin_flip
    end

    assert_redirected_to coin_flips_path
  end
end
