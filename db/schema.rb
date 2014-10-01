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

ActiveRecord::Schema.define(version: 20140902163416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_details", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "address_id"
    t.string   "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_details", ["address_id", "address_type"], name: "index_address_details_on_address_id_and_address_type", using: :btree

  create_table "addresses", force: true do |t|
    t.string   "meaning"
    t.string   "name"
    t.integer  "contact_id"
    t.string   "contact_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_id", "contact_type"], name: "index_addresses_on_contact_id_and_contact_type", using: :btree

  create_table "compositions", force: true do |t|
    t.string   "category"
    t.string   "name"
    t.string   "nodeid"
    t.string   "uid"
    t.string   "archetypeid"
    t.string   "templateid"
    t.string   "rm_version"
    t.integer  "ehr_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compositions", ["ehr_id"], name: "index_compositions_on_ehr_id", using: :btree

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

  create_table "content_items", force: true do |t|
    t.string   "name"
    t.string   "archetypeid"
    t.string   "rm_type"
    t.string   "nodeid"
    t.string   "path"
    t.integer  "composition_id"
    t.integer  "content_item_id"
    t.string   "content_item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "content_items", ["composition_id"], name: "index_content_items_on_composition_id", using: :btree
  add_index "content_items", ["content_item_id", "content_item_type"], name: "index_content_items_on_content_item_id_and_content_item_type", using: :btree

  create_table "data_values", force: true do |t|
    t.boolean  "bool_value"
    t.string   "text_value"
    t.integer  "int_value"
    t.float    "real_value"
    t.decimal  "decimal_value"
    t.string   "unit"
    t.date     "date_value"
    t.datetime "date_time_value"
    t.string   "code"
    t.integer  "item_id"
    t.string   "item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_values", ["item_id", "item_type"], name: "index_data_values_on_item_id_and_item_type", using: :btree

  create_table "detail_items", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "party_detail_id"
    t.string   "party_detail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detail_items", ["party_detail_id", "party_detail_type"], name: "index_detail_items_on_party_detail_id_and_party_detail_type", using: :btree

  create_table "ehrs", force: true do |t|
    t.integer  "person_id"
    t.string   "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ehrs", ["person_id"], name: "index_ehrs_on_person_id", using: :btree

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
    t.string   "rm_type"
    t.string   "archetypeid"
    t.string   "nodeid"
    t.string   "path"
    t.integer  "item_id"
    t.string   "item_type"
    t.integer  "content_item_id"
    t.string   "content_item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: true do |t|
    t.string   "name"
    t.string   "meaning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_details", force: true do |t|
    t.string   "name"
    t.string   "purpose"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_details", ["party_id", "party_type"], name: "index_party_details_on_party_id_and_party_type", using: :btree

  create_table "party_identities", force: true do |t|
    t.string   "name"
    t.string   "purpose"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_identities", ["party_id", "party_type"], name: "index_party_identities_on_party_id_and_party_type", using: :btree

  create_table "versions", force: true do |t|
    t.string   "lifecycle_state"
    t.integer  "ehr_id"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["ehr_id"], name: "index_versions_on_ehr_id", using: :btree

end
