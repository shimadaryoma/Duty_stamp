require "test_helper"

class Enployee::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get enployee_homes_about_url
    assert_response :success
  end
end
