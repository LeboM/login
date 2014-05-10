require 'test_helper'

class PublicControllerTest < ActionController::TestCase
  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get instructions" do
    get :instructions
    assert_response :success
  end

end
