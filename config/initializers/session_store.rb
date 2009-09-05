# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ultrasonic_session',
  :secret      => '96a2dcb91c21ff6ae6742d9542808b5ce376e6eaaa5e978f44ae6b2ff4d2b459956df93f0cc4e15c77193df7a2492f1aaa92c497a1486082359d3111d5ac8272'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
