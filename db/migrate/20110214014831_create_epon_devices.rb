class CreateEponDevices < ActiveRecord::Migration
  def self.up
    create_table :epon_devices do |t|
      t.column :model_id, :integer, :null => false
      t.column :area_code, :string, :limit => 8
      t.column :ip_address, :string, :limit => 32
      t.column :address, :string, :limit => 128
      t.timestamps
    end
  end

  def self.down
    drop_table :epon_devices
  end
end
