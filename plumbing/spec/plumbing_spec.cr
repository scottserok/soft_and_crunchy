require "./spec_helper"

describe Plumbing::Bar do

  describe "#outcome" do
    it "is 1" do
      bar = Plumbing::Bar.new 1, 2, 3
      bar.outcome.should eq 1
    end
  end
end
