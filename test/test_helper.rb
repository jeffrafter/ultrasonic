ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'
require 'shoulda'
require 'factory_girl'
require 'paperclip/../../shoulda_macros/paperclip' # really?
require 'clearance/../../shoulda_macros/clearance'

Dir[File.join(RAILS_ROOT, 'test', 'factories', '**', '*')].each {|f| require f }

class ActiveSupport::TestCase
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false
end
