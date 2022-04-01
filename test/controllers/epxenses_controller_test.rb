require "test_helper"

class EpxensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epxense = epxenses(:one)
  end

  test "should get index" do
    get epxenses_url
    assert_response :success
  end

  test "should get new" do
    get new_epxense_url
    assert_response :success
  end

  test "should create epxense" do
    assert_difference("Epxense.count") do
      post epxenses_url, params: { epxense: { exp_date: @epxense.exp_date, expenseType: @epxense.expenseType, expense_amount: @epxense.expense_amount, expense_name: @epxense.expense_name, paid: @epxense.paid, paidBy: @epxense.paidBy } }
    end

    assert_redirected_to epxense_url(Epxense.last)
  end

  test "should show epxense" do
    get epxense_url(@epxense)
    assert_response :success
  end

  test "should get edit" do
    get edit_epxense_url(@epxense)
    assert_response :success
  end

  test "should update epxense" do
    patch epxense_url(@epxense), params: { epxense: { exp_date: @epxense.exp_date, expenseType: @epxense.expenseType, expense_amount: @epxense.expense_amount, expense_name: @epxense.expense_name, paid: @epxense.paid, paidBy: @epxense.paidBy } }
    assert_redirected_to epxense_url(@epxense)
  end

  test "should destroy epxense" do
    assert_difference("Epxense.count", -1) do
      delete epxense_url(@epxense)
    end

    assert_redirected_to epxenses_url
  end
end
