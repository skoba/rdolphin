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

ActiveRecord::Schema.define(version: 20150303060611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_details", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "address_id"
    t.string   "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_details", ["address_type", "address_id"], name: "index_address_details_on_address_type_and_address_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "meaning"
    t.string   "name"
    t.integer  "contact_id"
    t.string   "contact_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_type", "contact_id"], name: "index_addresses_on_contact_type_and_contact_id", using: :btree

  create_table "component_proxies", force: :cascade do |t|
    t.integer  "folder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "component_proxies", ["folder_id"], name: "index_component_proxies_on_folder_id", using: :btree

  create_table "components", force: :cascade do |t|
    t.integer  "component_proxy_id"
    t.integer  "version_number"
    t.integer  "version_lifecycle_status_id"
    t.integer  "language_id"
    t.integer  "ehr_id"
    t.integer  "party_proxy_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "components", ["component_proxy_id"], name: "index_components_on_component_proxy_id", using: :btree
  add_index "components", ["ehr_id"], name: "index_components_on_ehr_id", using: :btree
  add_index "components", ["language_id"], name: "index_components_on_language_id", using: :btree
  add_index "components", ["party_proxy_id"], name: "index_components_on_party_proxy_id", using: :btree
  add_index "components", ["version_lifecycle_status_id"], name: "index_components_on_version_lifecycle_status_id", using: :btree

  create_table "compositions", force: :cascade do |t|
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

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "purpose"
    t.date     "valid_from"
    t.date     "valid_to"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["party_type", "party_id"], name: "index_contacts_on_party_type_and_party_id", using: :btree

  create_table "content_items", force: :cascade do |t|
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
  add_index "content_items", ["content_item_type", "content_item_id"], name: "index_content_items_on_content_item_type_and_content_item_id", using: :btree

  create_table "data_values", force: :cascade do |t|
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

  add_index "data_values", ["item_type", "item_id"], name: "index_data_values_on_item_type_and_item_id", using: :btree

  create_table "detail_items", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "party_detail_id"
    t.string   "party_detail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detail_items", ["party_detail_type", "party_detail_id"], name: "index_detail_items_on_party_detail_type_and_party_detail_id", using: :btree

  create_table "ehrs", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ehrs", ["person_id"], name: "index_ehrs_on_person_id", using: :btree

  create_table "identity_details", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "party_identity_id"
    t.string   "party_identity_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_proxies", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "item_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "item_proxies", ["item_type", "item_id"], name: "index_item_proxies_on_item_type_and_item_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "rm_type"
    t.string   "archetypeid"
    t.string   "nodeid"
    t.string   "path"
    t.integer  "entry_id"
    t.string   "entry_type"
    t.integer  "item_proxy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["entry_type", "entry_id"], name: "index_items_on_entry_type_and_entry_id", using: :btree
  add_index "items", ["item_proxy_id"], name: "index_items_on_item_proxy_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "code",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "meaning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "party_details", force: :cascade do |t|
    t.string   "name"
    t.string   "purpose"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_details", ["party_type", "party_id"], name: "index_party_details_on_party_type_and_party_id", using: :btree

  create_table "party_identities", force: :cascade do |t|
    t.string   "name"
    t.string   "purpose"
    t.integer  "party_id"
    t.string   "party_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "party_identities", ["party_type", "party_id"], name: "index_party_identities_on_party_type_and_party_id", using: :btree

  create_table "version_lifecycle_states", force: :cascade do |t|
    t.integer  "conceptid"
    t.string   "rubric"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "version_lifecycle_states", ["conceptid"], name: "index_version_lifecycle_states_on_conceptid", using: :btree
  add_index "version_lifecycle_states", ["language_id"], name: "index_version_lifecycle_states_on_language_id", using: :btree

  add_foreign_key "components", "ehrs"
end
