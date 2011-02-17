class CreateTestJobs < ActiveRecord::Migration
  def self.up
    create_table :test_jobs do |t|
      t.column :status, :string, :limit => 4
      t.column :test_type, :string, :limit => 8
      t.column :creator, :integer
      t.column :rslt_code, :string, :limit => 4
      t.column :concept_rslt, :string, :limit => 256
      t.column :remark, :string, :limit => 256
      t.timestamps
    end
  end

  def self.down
    drop_table :test_jobs
  end
end
