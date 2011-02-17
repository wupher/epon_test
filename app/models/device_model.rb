# == Schema Information
# Schema version: 20110214025217
#
# Table name: device_models
#
#  id           :integer         not null, primary key
#  manufacturer :string(24)
#  type         :string(8)
#  name         :string(24)
#  created_at   :datetime
#  updated_at   :datetime
#

class DeviceModel < ActiveRecord::Base
end
