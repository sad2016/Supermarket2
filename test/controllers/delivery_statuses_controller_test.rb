require 'test_helper'

class DeliveryStatusesControllerTest < ActionController::TestCase
  setup do
    @delivery_status = delivery_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_status" do
    assert_difference('DeliveryStatus.count') do
      post :create, delivery_status: { status_name: @delivery_status.status_name }
    end

    assert_redirected_to delivery_status_path(assigns(:delivery_status))
  end

  test "should show delivery_status" do
    get :show, id: @delivery_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_status
    assert_response :success
  end

  test "should update delivery_status" do
    patch :update, id: @delivery_status, delivery_status: { status_name: @delivery_status.status_name }
    assert_redirected_to delivery_status_path(assigns(:delivery_status))
  end

  test "should destroy delivery_status" do
    assert_difference('DeliveryStatus.count', -1) do
      delete :destroy, id: @delivery_status
    end

    assert_redirected_to delivery_statuses_path
  end
end
