require 'test_helper'

class InlambDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inlamb_dish = inlamb_dishes(:one)
  end

  test "should get index" do
    get inlamb_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_inlamb_dish_url
    assert_response :success
  end

  test "should create inlamb_dish" do
    assert_difference('InlambDish.count') do
      post inlamb_dishes_url, params: { inlamb_dish: { information: @inlamb_dish.information, price: @inlamb_dish.price, Name: @inlamb_dish.name } }
    end

    assert_redirected_to inlamb_dish_url(InlambDish.last)
  end

  test "should show inlamb_dish" do
    get inlamb_dish_url(@inlamb_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_inlamb_dish_url(@inlamb_dish)
    assert_response :success
  end

  test "should update inlamb_dish" do
    patch inlamb_dish_url(@inlamb_dish), params: { inlamb_dish: { information: @inlamb_dish.information, price: @inlamb_dish.price, Name: @inlamb_dish.name } }
    assert_redirected_to inlamb_dish_url(@inlamb_dish)
  end

  test "should destroy inlamb_dish" do
    assert_difference('InlambDish.count', -1) do
      delete inlamb_dish_url(@inlamb_dish)
    end

    assert_redirected_to inlamb_dishes_url
  end
end
