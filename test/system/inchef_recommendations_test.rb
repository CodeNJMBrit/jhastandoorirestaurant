require "application_system_test_case"

class InchefRecommendationsTest < ApplicationSystemTestCase
  setup do
    @inchef_recommendation = inchef_recommendations(:one)
  end

  test "visiting the index" do
    visit inchef_recommendations_url
    assert_selector "h1", text: "Inchef Recommendations"
  end

  test "creating a Inchef recommendation" do
    visit inchef_recommendations_url
    click_on "New Inchef Recommendation"

    fill_in "Information", with: @inchef_recommendation.information
    fill_in "Price", with: @inchef_recommendation.price
    fill_in "Name", with: @inchef_recommendation.name
    click_on "Create Inchef recommendation"

    assert_text "Inchef recommendation was successfully created"
    click_on "Back"
  end

  test "updating a Inchef recommendation" do
    visit inchef_recommendations_url
    click_on "Edit", match: :first

    fill_in "Information", with: @inchef_recommendation.information
    fill_in "Price", with: @inchef_recommendation.price
    fill_in "Name", with: @inchef_recommendation.name
    click_on "Update Inchef recommendation"

    assert_text "Inchef recommendation was successfully updated"
    click_on "Back"
  end

  test "destroying a Inchef recommendation" do
    visit inchef_recommendations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inchef recommendation was successfully destroyed"
  end
end
