# == Schema Information
# Schema version: 20110214025217
#
# Table name: epon_devices
#
#  id         :integer         not null, primary key
#  model_id   :integer         not null
#  area_code  :string(8)
#  ip_address :string(32)
#  address    :string(128)
#  created_at :datetime
#  updated_at :datetime
#

class EponDevice < ActiveRecord::Base
  belongs_to :model, :class_name => 'DeviceModel'
end
