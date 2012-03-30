require 'test_helper'

class AdminDataControllerTest < ActionController::TestCase
  setup do
    @admin_datum = admin_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_datum" do
    assert_difference('AdminDatum.count') do
      post :create, admin_datum: @admin_datum.attributes
    end

    assert_redirected_to admin_datum_path(assigns(:admin_datum))
  end

  test "should show admin_datum" do
    get :show, id: @admin_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_datum
    assert_response :success
  end

  test "should update admin_datum" do
    put :update, id: @admin_datum, admin_datum: @admin_datum.attributes
    assert_redirected_to admin_datum_path(assigns(:admin_datum))
  end

  test "should destroy admin_datum" do
    assert_difference('AdminDatum.count', -1) do
      delete :destroy, id: @admin_datum
    end

    assert_redirected_to admin_data_path
  end
end
