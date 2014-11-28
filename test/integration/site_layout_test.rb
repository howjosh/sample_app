require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

 # This test involves three steps.
 # 1. Get the root path (Home page0
 # 2. Verify that the right page tempate is rendered. 
 # 3. Check for the correct links to the Home, Help, About, and Contact pages 

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path  
  end
end
