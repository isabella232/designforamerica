require File.dirname(__FILE__) + '/../spec_helper'

describe Axis do
  it "should be valid" do
    Axis.new.should be_valid
  end
end
