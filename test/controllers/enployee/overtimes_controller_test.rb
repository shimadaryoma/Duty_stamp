require "test_helper"

class Enployee::OvertimesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get enployee_overtimes_new_url
    assert_response :success
  end

  test "should get create" do
    get enployee_overtimes_create_url
    assert_response :success
  end

  test "should get index" do
    get enployee_overtimes_index_url
    assert_response :success
  end
end
