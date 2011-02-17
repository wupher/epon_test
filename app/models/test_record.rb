# == Schema Information
# Schema version: 20110214025217
#
# Table name: test_records
#
#  id           :integer         not null, primary key
#  job_id       :integer         not null
#  record_sn    :string(3)
#  record_value :string(128)
#  created_at   :datetime
#  updated_at   :datetime
#

class TestRecord < ActiveRecord::Base
end
