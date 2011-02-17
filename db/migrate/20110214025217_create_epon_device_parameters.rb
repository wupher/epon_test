class CreateEponDeviceParameters < ActiveRecord::Migration
  def self.up
    create_table :epon_device_parameters do |t|
      t.column :group_id, :integer, :null => false
      t.column :group_name, :string, :limit => 64
      t.column :parent_group_id, :integer
      t.column :parameter_code, :integer
      t.column :parameter_value, :string, :limit => 256, :null => false
      t.column :parameter_name, :string, :limit => 1024
      t.column :valid, :boolean, :default => :true
      t.column :out_type_id, :integer
      t.column :area_code, :string, :limit => 128
      t.column :parameter_code_sequence, :string, :limit => 3
      t.column :parent_parameter_code, :string, :limit => 32
      t.column :leaf, :boolean, :default => :true
      t.column :allow_modify, :boolean, :default => :true
      t.column :remark, :string, :limit => 256
      t.timestamps
    end
  end

  def self.down
    drop_table :epon_device_parameters
  end
end
