require "test_helper"

class RoommatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roommate = roommates(:one)
  end

  test "should get index" do
    get roommates_url
    assert_response :success
  end

  test "should get new" do
    get new_roommate_url
    assert_response :success
  end

  test "should create roommate" do
    assert_difference("Roommate.count") do
      post roommates_url, params: { roommate: { email: @roommate.email, emergency_contact: @roommate.emergency_contact, emergency_phone: @roommate.emergency_phone, phone: @roommate.phone, user_name: @roommate.user_name } }
    end

    assert_redirected_to roommate_url(Roommate.last)
  end

  test "should show roommate" do
    get roommate_url(@roommate)
    assert_response :success
  end

  test "should get edit" do
    get edit_roommate_url(@roommate)
    assert_response :success
  end

  test "should update roommate" do
    patch roommate_url(@roommate), params: { roommate: { email: @roommate.email, emergency_contact: @roommate.emergency_contact, emergency_phone: @roommate.emergency_phone, phone: @roommate.phone, user_name: @roommate.user_name } }
    assert_redirected_to roommate_url(@roommate)
  end

  test "should destroy roommate" do
    assert_difference("Roommate.count", -1) do
      delete roommate_url(@roommate)
    end

    assert_redirected_to roommates_url
  end
end
