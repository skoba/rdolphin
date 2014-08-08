# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140808110538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_values", force: true do |t|
    t.boolean  "bool_value"
    t.string   "text_value"
    t.integer  "int_value"
    t.float    "real_value"
    t.decimal  "decimal_value"
    t.date     "date_value"
    t.datetime "date_time_value"
    t.string   "code"
    t.integer  "element_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_values", ["element_id"], name: "index_data_values_on_element_id", using: :btree

  create_table "item_structures", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "archetypeid"
    t.string   "nodeid"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "item_structure_id"
    t.integer  "cluster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["cluster_id"], name: "index_items_on_cluster_id", using: :btree
  add_index "items", ["item_structure_id"], name: "index_items_on_item_structure_id", using: :btree

end
