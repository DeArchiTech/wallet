require 'test_helper'

class CoinsavesControllerTest < ActionController::TestCase
  setup do
    @coinsafe = coinsaves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coinsaves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coinsafe" do
    assert_difference('Coinsave.count') do
      post :create, coinsafe: { coinsaveid: @coinsafe.coinsaveid, walletid: @coinsafe.walletid }
    end

    assert_redirected_to coinsafe_path(assigns(:coinsafe))
  end

  test "should show coinsafe" do
    get :show, id: @coinsafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coinsafe
    assert_response :success
  end

  test "should update coinsafe" do
    patch :update, id: @coinsafe, coinsafe: { coinsaveid: @coinsafe.coinsaveid, walletid: @coinsafe.walletid }
    assert_redirected_to coinsafe_path(assigns(:coinsafe))
  end

  test "should destroy coinsafe" do
    assert_difference('Coinsave.count', -1) do
      delete :destroy, id: @coinsafe
    end

    assert_redirected_to coinsaves_path
  end
end
