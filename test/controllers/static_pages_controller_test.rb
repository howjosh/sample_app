require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
 
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end


   test "should get home" do
    get :home #the action: get the home page
    assert_response :success 
	#the asserion, this is an abstract representation of the underlying HTTP Status code: 200
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help #the action: get the help page
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
