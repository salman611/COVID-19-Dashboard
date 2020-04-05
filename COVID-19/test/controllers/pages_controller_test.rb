require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get prevention" do
    get pages_prevention_url
    assert_response :success
  end

  test "should get statistics" do
    get pages_statistics_url
    assert_response :success
  end

end
