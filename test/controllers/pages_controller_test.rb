require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get info" do
    get pages_info_url
    assert_response :success
  end

  test "should get photos" do
    get pages_photos_url
    assert_response :success
  end

  test "should get video" do
    get pages_video_url
    assert_response :success
  end
end
