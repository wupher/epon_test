class CreateTestRecords < ActiveRecord::Migration
  def self.up
    create_table :test_records do |t|
      t.column :job_id, :integer, :null => false
      t.column :record_sn, :string, :limit => 3
      t.column :record_value, :string, :limit => 128
      t.timestamps
    end
  end

  def self.down
    drop_table :test_records
  end
end
