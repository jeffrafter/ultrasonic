require File.dirname(__FILE__) + '/../test_helper'
 
class UserTest < Test::Unit::TestCase
  should_allow_mass_assignment_of :username
  
  context "When signing up" do
    should_validate_presence_of :username
  end
  
  context "When multiple users have signed up" do
    setup { @user = Factory(:user) }    
    should_validate_uniqueness_of :username
  end

  context "A user" do
    setup { @user = Factory(:user) }    
    should "authenticate with username and good credentials" do
      assert User.authenticate(@user.username, @user.password)
      assert @user.authenticated?(@user.password)
    end  
  end  
end

