class ApplicationController < ActionController::Base
  include Spreadhead::Render
  include Clearance::Authentication
  helper :all 
  protect_from_forgery 
end
