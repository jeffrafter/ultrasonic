require File.dirname(__FILE__) + '/../test_helper'
 
class UsersControllerTest < ActionController::TestCase
  context "When getting new user view" do
    setup do 
      @controller = UsersController.new
      get :new 
    end  

    should "display username field" do
      assert_select "input[type=text][name=?]", "user[username]", true, "There must be a username field"
    end
  end
  
  context "When creating a new user" do
    setup do 
      @controller = UsersController.new
      User.delete_all
      user_attributes = Factory.attributes_for(:user)
      post :create, :user => user_attributes
    end  
    
    should_respond_with :redirect
    should_set_the_flash_to /You will receive an email/
  end  
end

