require 'test_helper'

class TlsControllerTest < ActionController::TestCase
  setup do
    @tl = tls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tl" do
    assert_difference('Tl.count') do
      post :create, tl: { first_name: @tl.first_name, last_name: @tl.last_name, ssdc_no: @tl.ssdc_no }
    end

    assert_redirected_to tl_path(assigns(:tl))
  end

  test "should show tl" do
    get :show, id: @tl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tl
    assert_response :success
  end

  test "should update tl" do
    patch :update, id: @tl, tl: { first_name: @tl.first_name, last_name: @tl.last_name, ssdc_no: @tl.ssdc_no }
    assert_redirected_to tl_path(assigns(:tl))
  end

  test "should destroy tl" do
    assert_difference('Tl.count', -1) do
      delete :destroy, id: @tl
    end

    assert_redirected_to tls_path
  end
end
