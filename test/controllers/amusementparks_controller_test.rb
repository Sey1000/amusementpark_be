require 'test_helper'

class AmusementparksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get amusementparks_index_url
    assert_response :success
  end

  test "should get show" do
    get amusementparks_show_url
    assert_response :success
  end

end
