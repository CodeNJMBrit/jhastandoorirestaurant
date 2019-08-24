require "application_system_test_case"

class InlambDishesTest < ApplicationSystemTestCase
  setup do
    @inlamb_dish = inlamb_dishes(:one)
  end

  test "visiting the index" do
    visit inlamb_dishes_url
    assert_selector "h1", text: "Inlamb Dishes"
  end

  test "creating a Inlamb dish" do
    visit inlamb_dishes_url
    click_on "New Inlamb Dish"

    fill_in "Information", with: @inlamb_dish.information
    fill_in "Price", with: @inlamb_dish.price
    fill_in "Name", with: @inlamb_dish.name
    click_on "Create Inlamb dish"

    assert_text "Inlamb dish was successfully created"
    click_on "Back"
  end

  test "updating a Inlamb dish" do
    visit inlamb_dishes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @inlamb_dish.information
    fill_in "Price", with: @inlamb_dish.price
    fill_in "Name", with: @inlamb_dish.name
    click_on "Update Inlamb dish"

    assert_text "Inlamb dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Inlamb dish" do
    visit inlamb_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inlamb dish was successfully destroyed"
  end
end
