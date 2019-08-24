require 'test_helper'

class InseaFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insea_food = insea_foods(:one)
  end

  test "should get index" do
    get insea_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_insea_food_url
    assert_response :success
  end

  test "should create insea_food" do
    assert_difference('InseaFood.count') do
      post insea_foods_url, params: { insea_food: { information: @insea_food.information, price: @insea_food.price, Name: @insea_food.name } }
    end

    assert_redirected_to insea_food_url(InseaFood.last)
  end

  test "should show insea_food" do
    get insea_food_url(@insea_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_insea_food_url(@insea_food)
    assert_response :success
  end

  test "should update insea_food" do
    patch insea_food_url(@insea_food), params: { insea_food: { information: @insea_food.information, price: @insea_food.price, Name: @insea_food.name } }
    assert_redirected_to insea_food_url(@insea_food)
  end

  test "should destroy insea_food" do
    assert_difference('InseaFood.count', -1) do
      delete insea_food_url(@insea_food)
    end

    assert_redirected_to insea_foods_url
  end
end
