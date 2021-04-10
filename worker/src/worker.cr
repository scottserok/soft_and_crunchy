module Worker
  VERSION = "0.1.0"

  class Foo
    include Sidekiq::Worker

    def perform(one : UInt16, two : UInt16, three : UInt16)
      Log.info { "one=#{one}" }
      Log.info { "two=#{two}" }
      Log.debug { "three=#{three}" }
      one
    end
  end
end
