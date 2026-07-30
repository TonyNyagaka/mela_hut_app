require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Mela Hut App"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get services" do
    get static_pages_services_url
    assert_response :success
    assert_select "title", "Services | #{@base_title}"
  end

  test "should get about us" do
    get static_pages_about_us_url
    assert_response :success
    assert_select "title", "About Us | #{@base_title}"
  end
end
