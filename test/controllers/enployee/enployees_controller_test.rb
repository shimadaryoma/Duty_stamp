require "test_helper"

class Enployee::EnployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get enployee_enployees_show_url
    assert_response :success
  end

  test "should get edit" do
    get enployee_enployees_edit_url
    assert_response :success
  end
end
