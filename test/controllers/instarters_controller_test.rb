require 'test_helper'

class InstartersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instarter = instarters(:one)
  end

  test "should get index" do
    get instarters_url
    assert_response :success
  end

  test "should get new" do
    get new_instarter_url
    assert_response :success
  end

  test "should create instarter" do
    assert_difference('Instarter.count') do
      post instarters_url, params: { instarter: { information: @instarter.information, price: @instarter.price, Name: @instarter.name } }
    end

    assert_redirected_to instarter_url(Instarter.last)
  end

  test "should show instarter" do
    get instarter_url(@instarter)
    assert_response :success
  end

  test "should get edit" do
    get edit_instarter_url(@instarter)
    assert_response :success
  end

  test "should update instarter" do
    patch instarter_url(@instarter), params: { instarter: { information: @instarter.information, price: @instarter.price, Name: @instarter.name } }
    assert_redirected_to instarter_url(@instarter)
  end

  test "should destroy instarter" do
    assert_difference('Instarter.count', -1) do
      delete instarter_url(@instarter)
    end

    assert_redirected_to instarters_url
  end
end
