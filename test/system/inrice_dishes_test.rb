require "application_system_test_case"

class InriceDishesTest < ApplicationSystemTestCase
  setup do
    @inrice_dish = inrice_dishes(:one)
  end

  test "visiting the index" do
    visit inrice_dishes_url
    assert_selector "h1", text: "Inrice Dishes"
  end

  test "creating a Inrice dish" do
    visit inrice_dishes_url
    click_on "New Inrice Dish"

    fill_in "Information", with: @inrice_dish.information
    fill_in "Price", with: @inrice_dish.price
    fill_in "Name", with: @inrice_dish.name
    click_on "Create Inrice dish"

    assert_text "Inrice dish was successfully created"
    click_on "Back"
  end

  test "updating a Inrice dish" do
    visit inrice_dishes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @inrice_dish.information
    fill_in "Price", with: @inrice_dish.price
    fill_in "Name", with: @inrice_dish.name
    click_on "Update Inrice dish"

    assert_text "Inrice dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Inrice dish" do
    visit inrice_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inrice dish was successfully destroyed"
  end
end
