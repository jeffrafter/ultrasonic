# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "thoughtbot-paperclip", :lib => "paperclip"
  config.gem "jeffrafter-spreadhead", :lib => "spreadhead"
  config.gem "thoughtbot-clearance", :lib => "clearance"
  config.frameworks -= [ :active_resource ]
  config.time_zone = 'UTC'
end

HOST = "localhost"
DO_NOT_REPLY = "donotreply@example.com"