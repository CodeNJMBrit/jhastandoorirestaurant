require 'test_helper'

class IntandoorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intandoori = intandooris(:one)
  end

  test "should get index" do
    get intandooris_url
    assert_response :success
  end

  test "should get new" do
    get new_intandoori_url
    assert_response :success
  end

  test "should create intandoori" do
    assert_difference('Intandoori.count') do
      post intandooris_url, params: { intandoori: { information: @intandoori.information, price: @intandoori.price, Name: @intandoori.name } }
    end

    assert_redirected_to intandoori_url(Intandoori.last)
  end

  test "should show intandoori" do
    get intandoori_url(@intandoori)
    assert_response :success
  end

  test "should get edit" do
    get edit_intandoori_url(@intandoori)
    assert_response :success
  end

  test "should update intandoori" do
    patch intandoori_url(@intandoori), params: { intandoori: { information: @intandoori.information, price: @intandoori.price, Name: @intandoori.name } }
    assert_redirected_to intandoori_url(@intandoori)
  end

  test "should destroy intandoori" do
    assert_difference('Intandoori.count', -1) do
      delete intandoori_url(@intandoori)
    end

    assert_redirected_to intandooris_url
  end
end
