require 'spec_helper'

describe Task do
  context "(empty)" do
    subject { Task.new }
    it "should not be valid" do
      expect(subject.valid?).to be_false
    end
  end
end
