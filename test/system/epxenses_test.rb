require "application_system_test_case"

class EpxensesTest < ApplicationSystemTestCase
  setup do
    @epxense = epxenses(:one)
  end

  test "visiting the index" do
    visit epxenses_url
    assert_selector "h1", text: "Epxenses"
  end

  test "should create epxense" do
    visit epxenses_url
    click_on "New epxense"

    fill_in "Exp date", with: @epxense.exp_date
    fill_in "Expensetype", with: @epxense.expenseType
    fill_in "Expense amount", with: @epxense.expense_amount
    fill_in "Expense name", with: @epxense.expense_name
    check "Paid" if @epxense.paid
    fill_in "Paidby", with: @epxense.paidBy
    click_on "Create Epxense"

    assert_text "Epxense was successfully created"
    click_on "Back"
  end

  test "should update Epxense" do
    visit epxense_url(@epxense)
    click_on "Edit this epxense", match: :first

    fill_in "Exp date", with: @epxense.exp_date
    fill_in "Expensetype", with: @epxense.expenseType
    fill_in "Expense amount", with: @epxense.expense_amount
    fill_in "Expense name", with: @epxense.expense_name
    check "Paid" if @epxense.paid
    fill_in "Paidby", with: @epxense.paidBy
    click_on "Update Epxense"

    assert_text "Epxense was successfully updated"
    click_on "Back"
  end

  test "should destroy Epxense" do
    visit epxense_url(@epxense)
    click_on "Destroy this epxense", match: :first

    assert_text "Epxense was successfully destroyed"
  end
end
