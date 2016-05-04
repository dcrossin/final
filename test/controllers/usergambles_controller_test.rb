require 'test_helper'

class UsergamblesControllerTest < ActionController::TestCase
  setup do
    @usergamble = usergambles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usergambles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usergamble" do
    assert_difference('Usergamble.count') do
      post :create, usergamble: { description: @usergamble.description, part_no: @usergamble.part_no, price: @usergamble.price, qty: @usergamble.qty }
    end

    assert_redirected_to usergamble_path(assigns(:usergamble))
  end

  test "should show usergamble" do
    get :show, id: @usergamble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usergamble
    assert_response :success
  end

  test "should update usergamble" do
    patch :update, id: @usergamble, usergamble: { description: @usergamble.description, part_no: @usergamble.part_no, price: @usergamble.price, qty: @usergamble.qty }
    assert_redirected_to usergamble_path(assigns(:usergamble))
  end

  test "should destroy usergamble" do
    assert_difference('Usergamble.count', -1) do
      delete :destroy, id: @usergamble
    end

    assert_redirected_to usergambles_path
  end
end
