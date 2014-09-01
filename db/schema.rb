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

ActiveRecord::Schema.define(version: 20140901102636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_details", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "meaning"
    t.string   "name"
    t.integer  "contact_id"
    t.string   "contact_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_id", "contact_type"], name: "index_addresses_on_contact_id_and_contact_type", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "purpose"
    t.date     "valid_from"
    t.date     "valid_to"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["party_id", "party_type"], name: "index_contacts_on_party_id_and_party_type", using: :btree

  create_table "contents", force: true do |t|
    t.string   "name"
    t.string   "archetypeid"
    t.string   "nodeid"
    t.string   "path"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contents", ["content_id"], name: "index_contents_on_content_id", using: :btree

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

  create_table "identity_details", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "party_identity_id"
    t.string   "party_identity_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "archetypeid"
    t.string   "nodeid"
    t.string   "path"
    t.integer  "item_id"
    t.string   "item_type"
    t.integer  "content_id"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.string   "name"
    t.string   "meaning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_identities", force: true do |t|
    t.string   "name"
    t.string   "purpose"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_identities", ["party_id", "party_type"], name: "index_party_identities_on_party_id_and_party_type", using: :btree

end
