# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :session_key => '_museu_medieval_session',
  :secret      => '1bf43fb6b8177873c54bfb50d4666864dfadfde512736070c2497a5ad1d8243cb811aeddc948cf420f3705b05d37159c4f24379137d6145e930060120cff249e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
