require 'test_helper'

class MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memberships_index_url
    assert_response :success
  end

  test "should get show" do
    get memberships_show_url
    assert_response :success
  end

end
