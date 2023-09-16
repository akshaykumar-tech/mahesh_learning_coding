require "application_system_test_case"

class AkshaysTest < ApplicationSystemTestCase
  setup do
    @akshay = akshays(:one)
  end

  test "visiting the index" do
    visit akshays_url
    assert_selector "h1", text: "Akshays"
  end

  test "creating a Akshay" do
    visit akshays_url
    click_on "New Akshay"

    fill_in "Age", with: @akshay.age
    fill_in "Name", with: @akshay.name
    click_on "Create Akshay"

    assert_text "Akshay was successfully created"
    click_on "Back"
  end

  test "updating a Akshay" do
    visit akshays_url
    click_on "Edit", match: :first

    fill_in "Age", with: @akshay.age
    fill_in "Name", with: @akshay.name
    click_on "Update Akshay"

    assert_text "Akshay was successfully updated"
    click_on "Back"
  end

  test "destroying a Akshay" do
    visit akshays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Akshay was successfully destroyed"
  end
end
