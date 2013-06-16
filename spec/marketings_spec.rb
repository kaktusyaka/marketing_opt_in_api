require 'spec_helper'

describe Marketing do
  it "new Marketing should be not valid" do
    Marketing.new.valid?.should be_false
  end
end
