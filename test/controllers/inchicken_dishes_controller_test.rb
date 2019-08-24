require 'test_helper'

class InchickenDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inchicken_dish = inchicken_dishes(:one)
  end

  test "should get index" do
    get inchicken_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_inchicken_dish_url
    assert_response :success
  end

  test "should create inchicken_dish" do
    assert_difference('InchickenDish.count') do
      post inchicken_dishes_url, params: { inchicken_dish: { information: @inchicken_dish.information, price: @inchicken_dish.price, Name: @inchicken_dish.name } }
    end

    assert_redirected_to inchicken_dish_url(InchickenDish.last)
  end

  test "should show inchicken_dish" do
    get inchicken_dish_url(@inchicken_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_inchicken_dish_url(@inchicken_dish)
    assert_response :success
  end

  test "should update inchicken_dish" do
    patch inchicken_dish_url(@inchicken_dish), params: { inchicken_dish: { information: @inchicken_dish.information, price: @inchicken_dish.price, Name: @inchicken_dish.name } }
    assert_redirected_to inchicken_dish_url(@inchicken_dish)
  end

  test "should destroy inchicken_dish" do
    assert_difference('InchickenDish.count', -1) do
      delete inchicken_dish_url(@inchicken_dish)
    end

    assert_redirected_to inchicken_dishes_url
  end
end
