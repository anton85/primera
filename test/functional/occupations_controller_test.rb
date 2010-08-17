require 'test_helper'

class OccupationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occupations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occupation" do
    assert_difference('Occupation.count') do
      post :create, :occupation => { }
    end

    assert_redirected_to occupation_path(assigns(:occupation))
  end

  test "should show occupation" do
    get :show, :id => occupations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => occupations(:one).to_param
    assert_response :success
  end

  test "should update occupation" do
    put :update, :id => occupations(:one).to_param, :occupation => { }
    assert_redirected_to occupation_path(assigns(:occupation))
  end

  test "should destroy occupation" do
    assert_difference('Occupation.count', -1) do
      delete :destroy, :id => occupations(:one).to_param
    end

    assert_redirected_to occupations_path
  end
end
