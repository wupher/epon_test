# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110214025217) do

  create_table "device_models", :force => true do |t|
    t.string   "manufacturer", :limit => 24
    t.string   "type",         :limit => 8
    t.string   "name",         :limit => 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epon_device_parameters", :force => true do |t|
    t.integer  "group_id",                                                  :null => false
    t.string   "group_name",              :limit => 64
    t.integer  "parent_group_id"
    t.integer  "parameter_code"
    t.string   "parameter_value",         :limit => 256,                    :null => false
    t.string   "parameter_name",          :limit => 1024
    t.boolean  "valid",                                   :default => true
    t.integer  "out_type_id"
    t.string   "area_code",               :limit => 128
    t.string   "parameter_code_sequence", :limit => 3
    t.string   "parent_parameter_code",   :limit => 32
    t.boolean  "leaf",                                    :default => true
    t.boolean  "allow_modify",                            :default => true
    t.string   "remark",                  :limit => 256
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epon_devices", :force => true do |t|
    t.integer  "model_id",                  :null => false
    t.string   "area_code",  :limit => 8
    t.string   "ip_address", :limit => 32
    t.string   "address",    :limit => 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "epon_products", :force => true do |t|
    t.string   "name",       :limit => 16
    t.string   "address",    :limit => 128
    t.integer  "device_id",  :limit => 16
    t.string   "rack",       :limit => 3,   :null => false
    t.string   "frame",      :limit => 3,   :null => false
    t.string   "solt",       :limit => 3,   :null => false
    t.string   "port",       :limit => 3,   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_jobs", :force => true do |t|
    t.string   "status",       :limit => 4
    t.string   "test_type",    :limit => 8
    t.integer  "creator"
    t.string   "rslt_code",    :limit => 4
    t.string   "concept_rslt", :limit => 256
    t.string   "remark",       :limit => 256
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_records", :force => true do |t|
    t.integer  "job_id",                      :null => false
    t.string   "record_sn",    :limit => 3
    t.string   "record_value", :limit => 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
