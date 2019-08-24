require 'test_helper'

class InriceDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inrice_dish = inrice_dishes(:one)
  end

  test "should get index" do
    get inrice_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_inrice_dish_url
    assert_response :success
  end

  test "should create inrice_dish" do
    assert_difference('InriceDish.count') do
      post inrice_dishes_url, params: { inrice_dish: { information: @inrice_dish.information, price: @inrice_dish.price, Name: @inrice_dish.name } }
    end

    assert_redirected_to inrice_dish_url(InriceDish.last)
  end

  test "should show inrice_dish" do
    get inrice_dish_url(@inrice_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_inrice_dish_url(@inrice_dish)
    assert_response :success
  end

  test "should update inrice_dish" do
    patch inrice_dish_url(@inrice_dish), params: { inrice_dish: { information: @inrice_dish.information, price: @inrice_dish.price, Name: @inrice_dish.name } }
    assert_redirected_to inrice_dish_url(@inrice_dish)
  end

  test "should destroy inrice_dish" do
    assert_difference('InriceDish.count', -1) do
      delete inrice_dish_url(@inrice_dish)
    end

    assert_redirected_to inrice_dishes_url
  end
end
