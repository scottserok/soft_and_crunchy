module Plumbing
  VERSION = "0.1.0"

  class Bar
    def initialize(one : UInt16, two : UInt16, three : UInt16)
      @one = one
      @two = two
      @three = three
      @logger = Logger.new(STDOUT)
      @logger.level = Logger::ERROR
    end

    def logger=(logger : Logger)
      @logger = logger
    end

    def logger_level=(level : Logger::Severity)
      @logger.level = level
    end

    def outcome
      if @logger
        @logger.info "time: #{Time.utc_now}"
        @logger.info "one: #{@one}"
        @logger.info "two: #{@two}"
        @logger.info "three: #{@three}"
      end
      1
    end
  end

  class Foo
    include Sidekiq::Worker

    def perform(one : UInt16, two : UInt16, three : UInt16)
      bar = Bar.new one, two, three
      bar.logger = logger
      bar.logger_level = Logger::INFO
      bar.outcome
    end
  end
end
