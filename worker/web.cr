require "sidekiq/web"

# Basic authentication:
#
# require "kemal-basic-auth"
# basic_auth "username", "password"

Kemal::Session.config do |config|
  config.secret = "awe8f3wfa89few"
end

# Exact same configuration for the Client API as above
Sidekiq::Client.default_context = Sidekiq::Client::Context.new

Kemal.run
