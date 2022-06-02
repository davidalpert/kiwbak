require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Afac boxes", with: @order.afac_boxes
    fill_in "Cell phone", with: @order.cell_phone
    fill_in "Comments", with: @order.comments
    fill_in "Email", with: @order.email
    fill_in "First name", with: @order.first_name
    check "Fulfilled" if @order.fulfilled
    check "Has paid" if @order.has_paid
    fill_in "Heard how", with: @order.heard_how
    fill_in "Home phone", with: @order.home_phone
    fill_in "Last name", with: @order.last_name
    fill_in "Self boxes", with: @order.self_boxes
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Afac boxes", with: @order.afac_boxes
    fill_in "Cell phone", with: @order.cell_phone
    fill_in "Comments", with: @order.comments
    fill_in "Email", with: @order.email
    fill_in "First name", with: @order.first_name
    check "Fulfilled" if @order.fulfilled
    check "Has paid" if @order.has_paid
    fill_in "Heard how", with: @order.heard_how
    fill_in "Home phone", with: @order.home_phone
    fill_in "Last name", with: @order.last_name
    fill_in "Self boxes", with: @order.self_boxes
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
