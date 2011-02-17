class CreateEponProducts < ActiveRecord::Migration
  def self.up
    create_table :epon_products do |t|
      t.column :name, :string, :limit => 16
      t.column :address, :string, :limit => 128
      t.column :device_id, :integer, :limit => 16
      t.column :rack, :string, :limit => 3, :null => false
      t.column :frame, :string, :limit => 3, :null => false
      t.column :solt, :string, :limit => 3, :null => false
      t.column :port, :string, :limit => 3, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :epon_products
  end
end
