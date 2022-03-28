require "test_helper"

class ColorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get color_show_url
    assert_response :success
  end
end
