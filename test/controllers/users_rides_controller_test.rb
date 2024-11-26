require "test_helper"

class UsersRidesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_rides_new_url
    assert_response :success
  end

  test "should get create" do
    get users_rides_create_url
    assert_response :success
  end

  test "should get edit" do
    get users_rides_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_rides_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_rides_destroy_url
    assert_response :success
  end
end
