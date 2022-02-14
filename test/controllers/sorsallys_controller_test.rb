require "test_helper"

class SorsallysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sorsallys_index_url
    assert_response :success
  end
end
