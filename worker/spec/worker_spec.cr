require "./spec_helper"

describe Worker::Foo do

  describe "#perform" do
    it "is 1" do
      foo = Worker::Foo.new
      foo.perform(1, 2, 3).should eq 1
    end
  end
end
