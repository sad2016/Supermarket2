require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { customer_email: @invoice.customer_email, customer_name: @invoice.customer_name, customerphone: @invoice.customerphone, delivery_address: @invoice.delivery_address, delivery_date: @invoice.delivery_date, delivery_status_id: @invoice.delivery_status_id, payment_type_id: @invoice.payment_type_id, purchase_date: @invoice.purchase_date, recieve_date: @invoice.recieve_date, total_amount_purchased: @invoice.total_amount_purchased }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { customer_email: @invoice.customer_email, customer_name: @invoice.customer_name, customerphone: @invoice.customerphone, delivery_address: @invoice.delivery_address, delivery_date: @invoice.delivery_date, delivery_status_id: @invoice.delivery_status_id, payment_type_id: @invoice.payment_type_id, purchase_date: @invoice.purchase_date, recieve_date: @invoice.recieve_date, total_amount_purchased: @invoice.total_amount_purchased }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
