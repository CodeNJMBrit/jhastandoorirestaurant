require "application_system_test_case"

class InstartersTest < ApplicationSystemTestCase
  setup do
    @instarter = instarters(:one)
  end

  test "visiting the index" do
    visit instarters_url
    assert_selector "h1", text: "Instarters"
  end

  test "creating a Instarter" do
    visit instarters_url
    click_on "New Instarter"

    fill_in "Information", with: @instarter.information
    fill_in "Price", with: @instarter.price
    fill_in "Name", with: @instarter.name
    click_on "Create Instarter"

    assert_text "Instarter was successfully created"
    click_on "Back"
  end

  test "updating a Instarter" do
    visit instarters_url
    click_on "Edit", match: :first

    fill_in "Information", with: @instarter.information
    fill_in "Price", with: @instarter.price
    fill_in "Name", with: @instarter.name
    click_on "Update Instarter"

    assert_text "Instarter was successfully updated"
    click_on "Back"
  end

  test "destroying a Instarter" do
    visit instarters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instarter was successfully destroyed"
  end
end
