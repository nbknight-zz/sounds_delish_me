require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  setup do
    @category = categories(:one)
  end

  test "visiting the index" do
    visit categories_url
    assert_selector "h1", text: "Categories"
  end

  test "creating a Category" do
    visit categories_url
    click_on "New Category"

    fill_in "Apps And Snacks", with: @category.apps_and_snacks
    fill_in "Breakfast And Brunch", with: @category.breakfast_and_brunch
    fill_in "Desserts", with: @category.desserts
    fill_in "Dinner", with: @category.dinner
    fill_in "Drinks", with: @category.drinks
    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "updating a Category" do
    visit categories_url
    click_on "Edit", match: :first

    fill_in "Apps And Snacks", with: @category.apps_and_snacks
    fill_in "Breakfast And Brunch", with: @category.breakfast_and_brunch
    fill_in "Desserts", with: @category.desserts
    fill_in "Dinner", with: @category.dinner
    fill_in "Drinks", with: @category.drinks
    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "destroying a Category" do
    visit categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category was successfully destroyed"
  end
end
