# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_model_generate_session',
  :secret      => 'd020b4cd7d2a1126f130e0a49693a57891366509c8aeebe12d3cd0e15630f60a9eaa487e9a22ed420f920ef44a4937af852f1a4d2f043c353ff42fd518d945f8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
