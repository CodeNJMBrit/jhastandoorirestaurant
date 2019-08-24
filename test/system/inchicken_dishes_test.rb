require "application_system_test_case"

class InchickenDishesTest < ApplicationSystemTestCase
  setup do
    @inchicken_dish = inchicken_dishes(:one)
  end

  test "visiting the index" do
    visit inchicken_dishes_url
    assert_selector "h1", text: "Inchicken Dishes"
  end

  test "creating a Inchicken dish" do
    visit inchicken_dishes_url
    click_on "New Inchicken Dish"

    fill_in "Information", with: @inchicken_dish.information
    fill_in "Price", with: @inchicken_dish.price
    fill_in "Name", with: @inchicken_dish.name
    click_on "Create Inchicken dish"

    assert_text "Inchicken dish was successfully created"
    click_on "Back"
  end

  test "updating a Inchicken dish" do
    visit inchicken_dishes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @inchicken_dish.information
    fill_in "Price", with: @inchicken_dish.price
    fill_in "Name", with: @inchicken_dish.name
    click_on "Update Inchicken dish"

    assert_text "Inchicken dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Inchicken dish" do
    visit inchicken_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inchicken dish was successfully destroyed"
  end
end
