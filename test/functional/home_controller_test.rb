require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get songlist" do
    get :songlist
    assert_response :success
  end

  test "should get singerlist" do
    get :singerlist
    assert_response :success
  end

end
