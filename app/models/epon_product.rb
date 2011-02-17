# == Schema Information
# Schema version: 20110214025217
#
# Table name: epon_products
#
#  id         :integer         not null, primary key
#  name       :string(16)
#  address    :string(128)
#  device_id  :integer(16)
#  rack       :string(3)       not null
#  frame      :string(3)       not null
#  solt       :string(3)       not null
#  port       :string(3)       not null
#  created_at :datetime
#  updated_at :datetime
#

class EponProduct < ActiveRecord::Base
  belongs_to :epon_device, :class_name => "EponDevice", :foreign_key => "device_id"
end
