require "application_system_test_case"

class InjhasSpecialBiryaniDishesTest < ApplicationSystemTestCase
  setup do
    @injhas_special_biryani_dish = injhas_special_biryani_dishes(:one)
  end

  test "visiting the index" do
    visit injhas_special_biryani_dishes_url
    assert_selector "h1", text: "Injhas Special Biryani Dishes"
  end

  test "creating a Injhas special biryani dish" do
    visit injhas_special_biryani_dishes_url
    click_on "New Injhas Special Biryani Dish"

    fill_in "Information", with: @injhas_special_biryani_dish.information
    fill_in "Price", with: @injhas_special_biryani_dish.price
    fill_in "Name", with: @injhas_special_biryani_dish.name
    click_on "Create Injhas special biryani dish"

    assert_text "Injhas special biryani dish was successfully created"
    click_on "Back"
  end

  test "updating a Injhas special biryani dish" do
    visit injhas_special_biryani_dishes_url
    click_on "Edit", match: :first

    fill_in "Information", with: @injhas_special_biryani_dish.information
    fill_in "Price", with: @injhas_special_biryani_dish.price
    fill_in "Name", with: @injhas_special_biryani_dish.name
    click_on "Update Injhas special biryani dish"

    assert_text "Injhas special biryani dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Injhas special biryani dish" do
    visit injhas_special_biryani_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Injhas special biryani dish was successfully destroyed"
  end
end
