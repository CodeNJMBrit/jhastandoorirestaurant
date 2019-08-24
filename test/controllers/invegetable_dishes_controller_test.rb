require 'test_helper'

class InvegetableDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invegetable_dish = invegetable_dishes(:one)
  end

  test "should get index" do
    get invegetable_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_invegetable_dish_url
    assert_response :success
  end

  test "should create invegetable_dish" do
    assert_difference('InvegetableDish.count') do
      post invegetable_dishes_url, params: { invegetable_dish: { information: @invegetable_dish.information, price: @invegetable_dish.price, Name: @invegetable_dish.name } }
    end

    assert_redirected_to invegetable_dish_url(InvegetableDish.last)
  end

  test "should show invegetable_dish" do
    get invegetable_dish_url(@invegetable_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_invegetable_dish_url(@invegetable_dish)
    assert_response :success
  end

  test "should update invegetable_dish" do
    patch invegetable_dish_url(@invegetable_dish), params: { invegetable_dish: { information: @invegetable_dish.information, price: @invegetable_dish.price, Name: @invegetable_dish.name } }
    assert_redirected_to invegetable_dish_url(@invegetable_dish)
  end

  test "should destroy invegetable_dish" do
    assert_difference('InvegetableDish.count', -1) do
      delete invegetable_dish_url(@invegetable_dish)
    end

    assert_redirected_to invegetable_dishes_url
  end
end
