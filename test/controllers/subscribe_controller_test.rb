require 'test_helper'

class SubscribeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subscribe_index_url
    assert_response :success
  end

  test "should get new" do
    get subscribe_new_url
    assert_response :success
  end

  test "should get create" do
    get subscribe_create_url
    assert_response :success
  end

end
