require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  test "should get created" do
    get :created
    assert_response :success
  end

end
