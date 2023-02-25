require "test_helper"

class Admin::StampsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_stamps_index_url
    assert_response :success
  end

  test "should get finish" do
    get admin_stamps_finish_url
    assert_response :success
  end
end
