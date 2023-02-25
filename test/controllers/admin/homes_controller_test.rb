require "test_helper"

class Admin::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get admin_homes_top_url
    assert_response :success
  end

  test "should get revise" do
    get admin_homes_revise_url
    assert_response :success
  end
end
