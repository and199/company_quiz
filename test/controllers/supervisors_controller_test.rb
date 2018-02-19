require 'test_helper'

class SupervisorsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get supervisors_show_url
    assert_response :success
  end

end
