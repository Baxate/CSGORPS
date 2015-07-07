require 'test_helper'

class TopbarpagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get tos" do
    get :tos
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
