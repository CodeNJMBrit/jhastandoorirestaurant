require 'test_helper'

class IndesertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indesert = indeserts(:one)
  end

  test "should get index" do
    get indeserts_url
    assert_response :success
  end

  test "should get new" do
    get new_indesert_url
    assert_response :success
  end

  test "should create indesert" do
    assert_difference('Indesert.count') do
      post indeserts_url, params: { indesert: { information: @indesert.information, price: @indesert.price, Name: @indesert.name } }
    end

    assert_redirected_to indesert_url(Indesert.last)
  end

  test "should show indesert" do
    get indesert_url(@indesert)
    assert_response :success
  end

  test "should get edit" do
    get edit_indesert_url(@indesert)
    assert_response :success
  end

  test "should update indesert" do
    patch indesert_url(@indesert), params: { indesert: { information: @indesert.information, price: @indesert.price, Name: @indesert.name } }
    assert_redirected_to indesert_url(@indesert)
  end

  test "should destroy indesert" do
    assert_difference('Indesert.count', -1) do
      delete indesert_url(@indesert)
    end

    assert_redirected_to indeserts_url
  end
end
