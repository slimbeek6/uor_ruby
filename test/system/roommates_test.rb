require "application_system_test_case"

class RoommatesTest < ApplicationSystemTestCase
  setup do
    @roommate = roommates(:one)
  end

  test "visiting the index" do
    visit roommates_url
    assert_selector "h1", text: "Roommates"
  end

  test "should create roommate" do
    visit roommates_url
    click_on "New roommate"

    fill_in "Email", with: @roommate.email
    fill_in "Emergency contact", with: @roommate.emergency_contact
    fill_in "Emergency phone", with: @roommate.emergency_phone
    fill_in "Phone", with: @roommate.phone
    fill_in "User name", with: @roommate.user_name
    click_on "Create Roommate"

    assert_text "Roommate was successfully created"
    click_on "Back"
  end

  test "should update Roommate" do
    visit roommate_url(@roommate)
    click_on "Edit this roommate", match: :first

    fill_in "Email", with: @roommate.email
    fill_in "Emergency contact", with: @roommate.emergency_contact
    fill_in "Emergency phone", with: @roommate.emergency_phone
    fill_in "Phone", with: @roommate.phone
    fill_in "User name", with: @roommate.user_name
    click_on "Update Roommate"

    assert_text "Roommate was successfully updated"
    click_on "Back"
  end

  test "should destroy Roommate" do
    visit roommate_url(@roommate)
    click_on "Destroy this roommate", match: :first

    assert_text "Roommate was successfully destroyed"
  end
end
