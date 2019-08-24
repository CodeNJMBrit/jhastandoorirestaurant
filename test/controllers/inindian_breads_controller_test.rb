require 'test_helper'

class InindianBreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inindian_bread = inindian_breads(:one)
  end

  test "should get index" do
    get inindian_breads_url
    assert_response :success
  end

  test "should get new" do
    get new_inindian_bread_url
    assert_response :success
  end

  test "should create inindian_bread" do
    assert_difference('InindianBread.count') do
      post inindian_breads_url, params: { inindian_bread: { information: @inindian_bread.information, price: @inindian_bread.price, Name: @inindian_bread.name } }
    end

    assert_redirected_to inindian_bread_url(InindianBread.last)
  end

  test "should show inindian_bread" do
    get inindian_bread_url(@inindian_bread)
    assert_response :success
  end

  test "should get edit" do
    get edit_inindian_bread_url(@inindian_bread)
    assert_response :success
  end

  test "should update inindian_bread" do
    patch inindian_bread_url(@inindian_bread), params: { inindian_bread: { information: @inindian_bread.information, price: @inindian_bread.price, Name: @inindian_bread.name } }
    assert_redirected_to inindian_bread_url(@inindian_bread)
  end

  test "should destroy inindian_bread" do
    assert_difference('InindianBread.count', -1) do
      delete inindian_bread_url(@inindian_bread)
    end

    assert_redirected_to inindian_breads_url
  end
end
