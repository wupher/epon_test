require 'spec_helper'

describe EponDevice do

  before(:each) do

  end
  
  it "should have a model object inside" do
    device = Factory(:MA5616)
    device.model.should_not be_nil
  end
end
