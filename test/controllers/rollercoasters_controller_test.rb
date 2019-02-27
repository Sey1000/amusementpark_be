require 'test_helper'

class RollercoastersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rollercoasters_index_url
    assert_response :success
  end

  test "should get show" do
    get rollercoasters_show_url
    assert_response :success
  end

end
