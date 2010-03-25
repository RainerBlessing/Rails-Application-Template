# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fb_session',
  :secret      => '545a8ef23f1c654bde07193cc482bc8e209b14a5593f4d14a890fc4afa3940948ae3c6ddd2dae53163d64dbffe49ac6e4f3653d163013321c3958f7b46529c16'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
