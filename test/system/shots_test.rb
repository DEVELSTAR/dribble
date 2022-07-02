require "application_system_test_case"

class ShotsTest < ApplicationSystemTestCase
  setup do
    @shot = shots(:one)
  end

  test "visiting the index" do
    visit shots_url
    assert_selector "h1", text: "Shots"
  end

  test "should create shot" do
    visit shots_url
    click_on "New shot"

    fill_in "Description", with: @shot.description
    fill_in "Title", with: @shot.title
    fill_in "User", with: @shot.user_id
    click_on "Create Shot"

    assert_text "Shot was successfully created"
    click_on "Back"
  end

  test "should update Shot" do
    visit shot_url(@shot)
    click_on "Edit this shot", match: :first

    fill_in "Description", with: @shot.description
    fill_in "Title", with: @shot.title
    fill_in "User", with: @shot.user_id
    click_on "Update Shot"

    assert_text "Shot was successfully updated"
    click_on "Back"
  end

  test "should destroy Shot" do
    visit shot_url(@shot)
    click_on "Destroy this shot", match: :first

    assert_text "Shot was successfully destroyed"
  end
end
