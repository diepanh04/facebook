require "test_helper"

class FriendRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get friend_requests_index_url
    assert_response :success
  end

  test "should get new" do
    get friend_requests_new_url
    assert_response :success
  end

  test "should get create" do
    get friend_requests_create_url
    assert_response :success
  end

  test "should get destory" do
    get friend_requests_destory_url
    assert_response :success
  end
end
