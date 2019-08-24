require "application_system_test_case"

class IntandoorisTest < ApplicationSystemTestCase
  setup do
    @intandoori = intandooris(:one)
  end

  test "visiting the index" do
    visit intandooris_url
    assert_selector "h1", text: "Intandooris"
  end

  test "creating a Intandoori" do
    visit intandooris_url
    click_on "New Intandoori"

    fill_in "Information", with: @intandoori.information
    fill_in "Price", with: @intandoori.price
    fill_in "Name", with: @intandoori.name
    click_on "Create Intandoori"

    assert_text "Intandoori was successfully created"
    click_on "Back"
  end

  test "updating a Intandoori" do
    visit intandooris_url
    click_on "Edit", match: :first

    fill_in "Information", with: @intandoori.information
    fill_in "Price", with: @intandoori.price
    fill_in "Name", with: @intandoori.name
    click_on "Update Intandoori"

    assert_text "Intandoori was successfully updated"
    click_on "Back"
  end

  test "destroying a Intandoori" do
    visit intandooris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intandoori was successfully destroyed"
  end
end
