require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { afac_boxes: @order.afac_boxes, cell_phone: @order.cell_phone, comments: @order.comments, email: @order.email, first_name: @order.first_name, fulfilled: @order.fulfilled, has_paid: @order.has_paid, heard_how: @order.heard_how, home_phone: @order.home_phone, last_name: @order.last_name, self_boxes: @order.self_boxes } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { afac_boxes: @order.afac_boxes, cell_phone: @order.cell_phone, comments: @order.comments, email: @order.email, first_name: @order.first_name, fulfilled: @order.fulfilled, has_paid: @order.has_paid, heard_how: @order.heard_how, home_phone: @order.home_phone, last_name: @order.last_name, self_boxes: @order.self_boxes } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
