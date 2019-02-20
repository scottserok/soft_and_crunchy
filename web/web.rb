require 'sinatra'
require 'sidekiq'

# Plumbing::Foo is implemented in our Crystal server, but we must give Ruby the
# minimum definition for the Sidekiq client to push the JSON payload to Redis.
module Plumbing
  class Foo
    include Sidekiq::Worker
  end
end

get '/' do
  Plumbing::Foo.perform_async(
    params[:one].to_i,  #UInt 16
    params[:two].to_i,  #UInt 16
    params[:three].to_i #UInt 16
  )
end