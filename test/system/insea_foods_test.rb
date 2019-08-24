require "application_system_test_case"

class InseaFoodsTest < ApplicationSystemTestCase
  setup do
    @insea_food = insea_foods(:one)
  end

  test "visiting the index" do
    visit insea_foods_url
    assert_selector "h1", text: "Insea Foods"
  end

  test "creating a Insea food" do
    visit insea_foods_url
    click_on "New Insea Food"

    fill_in "Information", with: @insea_food.information
    fill_in "Price", with: @insea_food.price
    fill_in "Name", with: @insea_food.name
    click_on "Create Insea food"

    assert_text "Insea food was successfully created"
    click_on "Back"
  end

  test "updating a Insea food" do
    visit insea_foods_url
    click_on "Edit", match: :first

    fill_in "Information", with: @insea_food.information
    fill_in "Price", with: @insea_food.price
    fill_in "Name", with: @insea_food.name
    click_on "Update Insea food"

    assert_text "Insea food was successfully updated"
    click_on "Back"
  end

  test "destroying a Insea food" do
    visit insea_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insea food was successfully destroyed"
  end
end
