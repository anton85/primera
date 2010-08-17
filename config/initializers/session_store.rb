# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Issuey_session',
  :secret      => 'dc2d641e54831cf35c49814f42b5f2c9b6b927a223eb46b99a6c50798fcbd0d3262e9337fbd3fe38b4f8a7275e8b1c6b78fb806e4c85e1acc8851c185b53ebab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
