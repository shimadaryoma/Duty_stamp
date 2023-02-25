require "test_helper"

class Enployee::StampsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enployee_stamps_new_url
    assert_response :success
  end

  test "should get edit" do
    get enployee_stamps_edit_url
    assert_response :success
  end

  test "should get create" do
    get enployee_stamps_create_url
    assert_response :success
  end
end
