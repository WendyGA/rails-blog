require "application_system_test_case"

class ArticiclesTest < ApplicationSystemTestCase
  setup do
    @articicle = articicles(:one)
  end

  test "visiting the index" do
    visit articicles_url
    assert_selector "h1", text: "Articicles"
  end

  test "creating a Articicle" do
    visit articicles_url
    click_on "New Articicle"

    fill_in "Body", with: @articicle.body
    fill_in "Tile", with: @articicle.tile
    click_on "Create Articicle"

    assert_text "Articicle was successfully created"
    click_on "Back"
  end

  test "updating a Articicle" do
    visit articicles_url
    click_on "Edit", match: :first

    fill_in "Body", with: @articicle.body
    fill_in "Tile", with: @articicle.tile
    click_on "Update Articicle"

    assert_text "Articicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Articicle" do
    visit articicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Articicle was successfully destroyed"
  end
end
