require 'test_helper'

class VhomeControllerTest < ActionController::TestCase
  test "should get vhome" do
    get :vhome
    assert_response :success
  end

end
