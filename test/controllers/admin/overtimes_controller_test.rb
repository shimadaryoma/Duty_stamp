require "test_helper"

class Admin::OvertimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_overtimes_index_url
    assert_response :success
  end
end
