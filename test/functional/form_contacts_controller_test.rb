require 'test_helper'

class FormContactsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_contact" do
    assert_difference('FormContact.count') do
      post :create, :form_contact => { }
    end

    assert_redirected_to form_contact_path(assigns(:form_contact))
  end

  test "should show form_contact" do
    get :show, :id => form_contacts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => form_contacts(:one).to_param
    assert_response :success
  end

  test "should update form_contact" do
    put :update, :id => form_contacts(:one).to_param, :form_contact => { }
    assert_redirected_to form_contact_path(assigns(:form_contact))
  end

  test "should destroy form_contact" do
    assert_difference('FormContact.count', -1) do
      delete :destroy, :id => form_contacts(:one).to_param
    end

    assert_redirected_to form_contacts_path
  end
end
