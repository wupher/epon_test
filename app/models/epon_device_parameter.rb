# == Schema Information
# Schema version: 20110214025217
#
# Table name: epon_device_parameters
#
#  id                      :integer         not null, primary key
#  group_id                :integer         not null
#  group_name              :string(64)
#  parent_group_id         :integer
#  parameter_code          :integer
#  parameter_value         :string(256)     not null
#  parameter_name          :string(1024)
#  valid                   :boolean         default(TRUE)
#  out_type_id             :integer
#  area_code               :string(128)
#  parameter_code_sequence :string(3)
#  parent_parameter_code   :string(32)
#  leaf                    :boolean         default(TRUE)
#  allow_modify            :boolean         default(TRUE)
#  remark                  :string(256)
#  created_at              :datetime
#  updated_at              :datetime
#

class EponDeviceParameter < ActiveRecord::Base
end
