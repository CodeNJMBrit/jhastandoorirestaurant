require 'test_helper'

class InchefRecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inchef_recommendation = inchef_recommendations(:one)
  end

  test "should get index" do
    get inchef_recommendations_url
    assert_response :success
  end

  test "should get new" do
    get new_inchef_recommendation_url
    assert_response :success
  end

  test "should create inchef_recommendation" do
    assert_difference('InchefRecommendation.count') do
      post inchef_recommendations_url, params: { inchef_recommendation: { information: @inchef_recommendation.information, price: @inchef_recommendation.price, Name: @inchef_recommendation.name } }
    end

    assert_redirected_to inchef_recommendation_url(InchefRecommendation.last)
  end

  test "should show inchef_recommendation" do
    get inchef_recommendation_url(@inchef_recommendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_inchef_recommendation_url(@inchef_recommendation)
    assert_response :success
  end

  test "should update inchef_recommendation" do
    patch inchef_recommendation_url(@inchef_recommendation), params: { inchef_recommendation: { information: @inchef_recommendation.information, price: @inchef_recommendation.price, Name: @inchef_recommendation.name } }
    assert_redirected_to inchef_recommendation_url(@inchef_recommendation)
  end

  test "should destroy inchef_recommendation" do
    assert_difference('InchefRecommendation.count', -1) do
      delete inchef_recommendation_url(@inchef_recommendation)
    end

    assert_redirected_to inchef_recommendations_url
  end
end
