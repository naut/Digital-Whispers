require 'test_helper'

class ExhibitionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition" do
    assert_difference('Exhibition.count') do
      post :create, :exhibition => { }
    end

    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should show exhibition" do
    get :show, :id => exhibitions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => exhibitions(:one).to_param
    assert_response :success
  end

  test "should update exhibition" do
    put :update, :id => exhibitions(:one).to_param, :exhibition => { }
    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should destroy exhibition" do
    assert_difference('Exhibition.count', -1) do
      delete :destroy, :id => exhibitions(:one).to_param
    end

    assert_redirected_to exhibitions_path
  end
end
