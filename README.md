# Soft & Crunchy

A web server written in Ruby using Sinatra and a Sidekiq backend processing jobs
written in Crystal.

## Installation

In the web directory, following the README or run `bundle install`.

In the plumbing directory, follow the README or run `make`.

## Usage

To start the Ruby web server: `cd web && rackup`.

To start the Sidekiq server: `cd plumbing && ./sidekiq`.

## Contributing

1. Fork it (<https://github.com/your-github-user/plumbing/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Scott Serok](https://github.com/scottserok) - creator and maintainer
