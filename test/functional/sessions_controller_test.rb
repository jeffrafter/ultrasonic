require File.dirname(__FILE__) + '/../test_helper'
 
class SessionsControllerTest < ActionController::TestCase
  context "Signing in a user by username" do
    setup do     
      User.delete_all
      @controller = Clearance::SessionsController.new
      @user = Factory(:email_confirmed_user)
      post :create, :session => { :email => @user.username, :password => @user.password }
    end  
    
    should_set_the_flash_to /Signed in/i
    should_redirect_to_url_after_create
  end  
end

