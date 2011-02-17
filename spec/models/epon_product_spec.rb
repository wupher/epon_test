require 'spec_helper'

describe EponProduct do
  it "should have a device associate with product" do
    epon_ma5616 = Factory(:MA5616)
    adsl = Factory(:adsl)
    puts "a.==: #{epon_ma5616== adsl.epon_device}"
    print "epon_ma5616:";p epon_ma5616
    print "adsl:";p adsl.epon_device
    adsl.epon_device.should_not be_nil
  end
end
