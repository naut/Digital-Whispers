# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_digitalwhispers_session',
  :secret      => 'c868cde84e57f79e8a6e833333fe9a1cda16585adf736dc2b47f69eb6d7d635ebb8729e719992b60692534c069140bdccebea0353e186ab5cdefa392cb52e76f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
