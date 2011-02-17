class CreateDeviceModels < ActiveRecord::Migration
  def self.up
    create_table :device_models do |t|
      t.column :manufacturer, :string, :limit => 24
      t.column :type, :string, :limit => 8
      t.column :name, :string, :limit => 24
      t.timestamps
    end
  end

  def self.down
    drop_table :device_models
  end
end
