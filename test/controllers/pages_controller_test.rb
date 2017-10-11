require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should rout to page" do
  	assert_routing '/pages/1', { controller: "pages", action: "show", id: "1" }
  end

  test "should route to about page" do
    assert_routing '/about', { :controller => "pages", :action => "about"}
    get about_url
    assert_response :success
  end

end
