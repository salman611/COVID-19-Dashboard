require "application_system_test_case"

class PharmciesStoresTest < ApplicationSystemTestCase
  setup do
    @pharmcies_store = pharmcies_stores(:one)
  end

  test "visiting the index" do
    visit pharmcies_stores_url
    assert_selector "h1", text: "Pharmcies Stores"
  end

  test "creating a Pharmcies store" do
    visit pharmcies_stores_url
    click_on "New Pharmcies Store"

    fill_in "Latitude", with: @pharmcies_store.latitude
    fill_in "Longitude", with: @pharmcies_store.longitude
    fill_in "Name", with: @pharmcies_store.name
    click_on "Create Pharmcies store"

    assert_text "Pharmcies store was successfully created"
    click_on "Back"
  end

  test "updating a Pharmcies store" do
    visit pharmcies_stores_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @pharmcies_store.latitude
    fill_in "Longitude", with: @pharmcies_store.longitude
    fill_in "Name", with: @pharmcies_store.name
    click_on "Update Pharmcies store"

    assert_text "Pharmcies store was successfully updated"
    click_on "Back"
  end

  test "destroying a Pharmcies store" do
    visit pharmcies_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pharmcies store was successfully destroyed"
  end
end
