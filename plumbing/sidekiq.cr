require "sidekiq/cli"
require "./src/plumbing"

cli = Sidekiq::CLI.new
server = cli.configure do |config|
  # middleware would be added here
end

cli.run(server)
