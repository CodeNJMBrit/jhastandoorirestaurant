require "application_system_test_case"

class InindianBreadsTest < ApplicationSystemTestCase
  setup do
    @inindian_bread = inindian_breads(:one)
  end

  test "visiting the index" do
    visit inindian_breads_url
    assert_selector "h1", text: "Inindian Breads"
  end

  test "creating a Inindian bread" do
    visit inindian_breads_url
    click_on "New Inindian Bread"

    fill_in "Information", with: @inindian_bread.information
    fill_in "Price", with: @inindian_bread.price
    fill_in "Name", with: @inindian_bread.name
    click_on "Create Inindian bread"

    assert_text "Inindian bread was successfully created"
    click_on "Back"
  end

  test "updating a Inindian bread" do
    visit inindian_breads_url
    click_on "Edit", match: :first

    fill_in "Information", with: @inindian_bread.information
    fill_in "Price", with: @inindian_bread.price
    fill_in "Name", with: @inindian_bread.name
    click_on "Update Inindian bread"

    assert_text "Inindian bread was successfully updated"
    click_on "Back"
  end

  test "destroying a Inindian bread" do
    visit inindian_breads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inindian bread was successfully destroyed"
  end
end
