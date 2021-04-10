# Soft & Crunchy

A web server written in Ruby using Sinatra and a Sidekiq backend processing jobs
written in Crystal.

## Installation

In the web directory, run `bundle install` to install dependencies.

In the worker directory, run `make` to build the binaries.

## Usage

To start the Ruby web server: `cd web && rackup`

To start the Sidekiq server: `cd worker && bin/sidekiq`

To start the Sidekiq web dashboard: `cd worker && bin/web`

Open up http://localhost:9292 to have the Ruby web process queue up a job in Redis.
The job will be processed by the Crystal worker. Open up http://localhost:3000 to
see the Sidekiq dashboard update the number of jobs processed.
