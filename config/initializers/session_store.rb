# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_crosshatch_session',
  :secret      => '100eee3469848397d1358c182c5ae026e532a4e0d7cada7ae6bd115e13866a123f6c513ee285777a27574d75b3b0094d878759ac1518e095fe348caa9dcde6f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
