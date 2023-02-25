require "test_helper"

class Admin::EnployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_enployees_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_enployees_show_url
    assert_response :success
  end
end
