require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get apply" do
    get :apply
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
