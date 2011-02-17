# == Schema Information
# Schema version: 20110214025217
#
# Table name: test_jobs
#
#  id           :integer         not null, primary key
#  status       :string(4)
#  test_type    :string(8)
#  creator      :integer
#  rslt_code    :string(4)
#  concept_rslt :string(256)
#  remark       :string(256)
#  created_at   :datetime
#  updated_at   :datetime
#

class TestJob < ActiveRecord::Base
end
