require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get homes" do
    get pages_homes_url
    assert_response :success
  end

end
