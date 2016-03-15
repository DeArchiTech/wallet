require 'test_helper'

class CoinusersControllerTest < ActionController::TestCase
  setup do
    @coinuser = coinusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coinusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coinuser" do
    assert_difference('Coinuser.count') do
      post :create, coinuser: { email: @coinuser.email, encryptedpwd: @coinuser.encryptedpwd, userid: @coinuser.userid, username: @coinuser.username }
    end

    assert_redirected_to coinuser_path(assigns(:coinuser))
  end

  test "should show coinuser" do
    get :show, id: @coinuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coinuser
    assert_response :success
  end

  test "should update coinuser" do
    patch :update, id: @coinuser, coinuser: { email: @coinuser.email, encryptedpwd: @coinuser.encryptedpwd, userid: @coinuser.userid, username: @coinuser.username }
    assert_redirected_to coinuser_path(assigns(:coinuser))
  end

  test "should destroy coinuser" do
    assert_difference('Coinuser.count', -1) do
      delete :destroy, id: @coinuser
    end

    assert_redirected_to coinusers_path
  end
end
