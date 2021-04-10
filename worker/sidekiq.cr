require "sidekiq/cli"
require "./src/worker"

cli = Sidekiq::CLI.new
server = cli.configure do |config|
  # middleware would be added here
end

cli.run(server)
