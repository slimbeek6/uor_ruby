require "application_system_test_case"

class ChoresTest < ApplicationSystemTestCase
  setup do
    @chore = chores(:one)
  end

  test "visiting the index" do
    visit chores_url
    assert_selector "h1", text: "Chores"
  end

  test "should create chore" do
    visit chores_url
    click_on "New chore"

    fill_in "Assigned to", with: @chore.assigned_to
    check "Completed" if @chore.completed
    fill_in "Due date", with: @chore.due_date
    fill_in "Name", with: @chore.name
    click_on "Create Chore"

    assert_text "Chore was successfully created"
    click_on "Back"
  end

  test "should update Chore" do
    visit chore_url(@chore)
    click_on "Edit this chore", match: :first

    fill_in "Assigned to", with: @chore.assigned_to
    check "Completed" if @chore.completed
    fill_in "Due date", with: @chore.due_date
    fill_in "Name", with: @chore.name
    click_on "Update Chore"

    assert_text "Chore was successfully updated"
    click_on "Back"
  end

  test "should destroy Chore" do
    visit chore_url(@chore)
    click_on "Destroy this chore", match: :first

    assert_text "Chore was successfully destroyed"
  end
end
