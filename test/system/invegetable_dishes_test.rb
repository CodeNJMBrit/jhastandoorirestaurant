require "application_system_test_case"

class InvegetableDishesTest < ApplicationSystemTestCase
  setup do
    @invegetable_dish = invegetable_dishes(:one)
  end

  test "visiting the index" do
    visit invegetable_dishes_url
    assert_selector "h1", text: "Invegetable Dishes"
  end

  test "creating a Invegetable dish" do
    visit invegetable_dishes_url
    click_on "New Invegetable Dish"

    fill_in "Information", with: @invegetable_dish.information
    fill_in "Price", with: @invegetable_dish.price
    fill_in "Name", with: @invegetable_dish.name
    click_on "Create Invegetable dish"

    assert_text "Invegetable dish was successfully created"
    click_on "Back"
  end

  test "updating a Invegetable dish" do
    visit invegetable_dishes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @invegetable_dish.information
    fill_in "Price", with: @invegetable_dish.price
    fill_in "Name", with: @invegetable_dish.name
    click_on "Update Invegetable dish"

    assert_text "Invegetable dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Invegetable dish" do
    visit invegetable_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invegetable dish was successfully destroyed"
  end
end
