require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address1: @user.address1, address2: @user.address2, city: @user.city, email: @user.email, fname: @user.fname, lname: @user.lname, password: @user.password, password_confirmation: @user.password_confirmation, phone: @user.phone, pin_id: @user.pin_id, state: @user.state, username: @user.username, wallet_id: @user.wallet_id, xip: @user.xip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { address1: @user.address1, address2: @user.address2, city: @user.city, email: @user.email, fname: @user.fname, lname: @user.lname, password: @user.password, password_confirmation: @user.password_confirmation, phone: @user.phone, pin_id: @user.pin_id, state: @user.state, username: @user.username, wallet_id: @user.wallet_id, xip: @user.xip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
