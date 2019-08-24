require 'test_helper'

class InjhasSpecialBiryaniDishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @injhas_special_biryani_dish = injhas_special_biryani_dishes(:one)
  end

  test "should get index" do
    get injhas_special_biryani_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_injhas_special_biryani_dish_url
    assert_response :success
  end

  test "should create injhas_special_biryani_dish" do
    assert_difference('InjhasSpecialBiryaniDish.count') do
      post injhas_special_biryani_dishes_url, params: { injhas_special_biryani_dish: { information: @injhas_special_biryani_dish.information, price: @injhas_special_biryani_dish.price, Name: @injhas_special_biryani_dish.name } }
    end

    assert_redirected_to injhas_special_biryani_dish_url(InjhasSpecialBiryaniDish.last)
  end

  test "should show injhas_special_biryani_dish" do
    get injhas_special_biryani_dish_url(@injhas_special_biryani_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_injhas_special_biryani_dish_url(@injhas_special_biryani_dish)
    assert_response :success
  end

  test "should update injhas_special_biryani_dish" do
    patch injhas_special_biryani_dish_url(@injhas_special_biryani_dish), params: { injhas_special_biryani_dish: { information: @injhas_special_biryani_dish.information, price: @injhas_special_biryani_dish.price, Name: @injhas_special_biryani_dish.name } }
    assert_redirected_to injhas_special_biryani_dish_url(@injhas_special_biryani_dish)
  end

  test "should destroy injhas_special_biryani_dish" do
    assert_difference('InjhasSpecialBiryaniDish.count', -1) do
      delete injhas_special_biryani_dish_url(@injhas_special_biryani_dish)
    end

    assert_redirected_to injhas_special_biryani_dishes_url
  end
end
