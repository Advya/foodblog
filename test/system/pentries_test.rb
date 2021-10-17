require "application_system_test_case"

class PentriesTest < ApplicationSystemTestCase
  setup do
    @pentry = pentries(:one)
  end

  test "visiting the index" do
    visit pentries_url
    assert_selector "h1", text: "Pentries"
  end

  test "creating a Pentry" do
    visit pentries_url
    click_on "New Pentry"

    fill_in "Calories", with: @pentry.calories
    fill_in "Carbohydrates", with: @pentry.carbohydrates
    fill_in "Fats", with: @pentry.fats
    fill_in "Meal type", with: @pentry.meal_type
    fill_in "Proteins", with: @pentry.proteins
    click_on "Create Pentry"

    assert_text "Pentry was successfully created"
    click_on "Back"
  end

  test "updating a Pentry" do
    visit pentries_url
    click_on "Edit", match: :first

    fill_in "Calories", with: @pentry.calories
    fill_in "Carbohydrates", with: @pentry.carbohydrates
    fill_in "Fats", with: @pentry.fats
    fill_in "Meal type", with: @pentry.meal_type
    fill_in "Proteins", with: @pentry.proteins
    click_on "Update Pentry"

    assert_text "Pentry was successfully updated"
    click_on "Back"
  end

  test "destroying a Pentry" do
    visit pentries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pentry was successfully destroyed"
  end
end
