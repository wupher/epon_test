require 'spec_helper'

describe DeviceModel do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
    @attr = {:name => 'Huawei5616', :type => 'epon', :manufacturer => '华为'}
  end
  
  it "should create new instance given field valid attributes" do
    model1 = DeviceModel.new(@attr)
    model1.save
  end
end
