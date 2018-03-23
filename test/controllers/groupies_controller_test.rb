require 'test_helper'

class GroupiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get groupies_create_url
    assert_response :success
  end

  test "should get destroy" do
    get groupies_destroy_url
    assert_response :success
  end

end
