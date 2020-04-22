require "application_system_test_case"

class PhotoBoothsTest < ApplicationSystemTestCase
  setup do
    @photo_booth = photo_booths(:one)
  end

  test "visiting the index" do
    visit photo_booths_url
    assert_selector "h1", text: "Photo Booths"
  end

  test "creating a Photo booth" do
    visit photo_booths_url
    click_on "New Photo Booth"

    fill_in "Photo", with: @photo_booth.photo
    fill_in "Title", with: @photo_booth.title
    click_on "Create Photo booth"

    assert_text "Photo booth was successfully created"
    click_on "Back"
  end

  test "updating a Photo booth" do
    visit photo_booths_url
    click_on "Edit", match: :first

    fill_in "Photo", with: @photo_booth.photo
    fill_in "Title", with: @photo_booth.title
    click_on "Update Photo booth"

    assert_text "Photo booth was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo booth" do
    visit photo_booths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo booth was successfully destroyed"
  end
end
