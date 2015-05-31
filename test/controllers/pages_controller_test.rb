require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get session" do
    get :session
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

end
