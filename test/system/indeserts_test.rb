require "application_system_test_case"

class IndesertsTest < ApplicationSystemTestCase
  setup do
    @indesert = indeserts(:one)
  end

  test "visiting the index" do
    visit indeserts_url
    assert_selector "h1", text: "Indeserts"
  end

  test "creating a Indesert" do
    visit indeserts_url
    click_on "New Indesert"

    fill_in "Information", with: @indesert.information
    fill_in "Price", with: @indesert.price
    fill_in "Name", with: @indesert.name
    click_on "Create Indesert"

    assert_text "Indesert was successfully created"
    click_on "Back"
  end

  test "updating a Indesert" do
    visit indeserts_url
    click_on "Edit", match: :first

    fill_in "Information", with: @indesert.information
    fill_in "Price", with: @indesert.price
    fill_in "Name", with: @indesert.name
    click_on "Update Indesert"

    assert_text "Indesert was successfully updated"
    click_on "Back"
  end

  test "destroying a Indesert" do
    visit indeserts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Indesert was successfully destroyed"
  end
end
