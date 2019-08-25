require "application_system_test_case"

class DessertsTest < ApplicationSystemTestCase
  setup do
    @dessert = desserts(:one)
  end

  test "visiting the index" do
    visit desserts_url
    assert_selector "h1", text: "Desserts"
  end

  test "creating a Dessert" do
    visit desserts_url
    click_on "New Dessert"

    fill_in "Information", with: @dessert.information
    fill_in "Name", with: @dessert.name
    fill_in "Price", with: @dessert.price
    click_on "Create Dessert"

    assert_text "Dessert was successfully created"
    click_on "Back"
  end

  test "updating a Dessert" do
    visit desserts_url
    click_on "Edit", match: :first

    fill_in "Information", with: @dessert.information
    fill_in "Name", with: @dessert.name
    fill_in "Price", with: @dessert.price
    click_on "Update Dessert"

    assert_text "Dessert was successfully updated"
    click_on "Back"
  end

  test "destroying a Dessert" do
    visit desserts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dessert was successfully destroyed"
  end
end
