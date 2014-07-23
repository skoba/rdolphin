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

ActiveRecord::Schema.define(version: 20140723060809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string   "post_code"
    t.string   "address_type",          null: false
    t.string   "unstructured"
    t.string   "unstructured_syllabic"
    t.string   "prefecture"
    t.string   "prefecture_code"
    t.string   "state"
    t.string   "city"
    t.string   "city_syllabic"
    t.string   "town"
    t.string   "town_syllabic"
    t.string   "property_number"
    t.date     "valid_from"
    t.date     "valid_to"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_id"
    t.string   "party_type"
  end

  add_index "addresses", ["party_id", "party_type"], name: "index_addresses_on_party_id_and_party_type", using: :btree

  create_table "compositions", force: true do |t|
    t.integer  "ehr_id"
    t.string   "uid",          null: false
    t.string   "category",     null: false
    t.datetime "start_time"
    t.string   "archetype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "compositions", ["ehr_id"], name: "index_compositions_on_ehr_id", using: :btree
  add_index "compositions", ["uid"], name: "index_compositions_on_uid", unique: true, using: :btree

  create_table "content_items", force: true do |t|
    t.integer  "composition_id"
    t.string   "rm_type_name",   null: false
    t.string   "archetype_id",   null: false
    t.string   "name"
    t.text     "path",           null: false
    t.string   "node_id"
    t.string   "txt_value"
    t.float    "num_value"
    t.integer  "int_value"
    t.boolean  "bool_value"
    t.datetime "datetime_value"
    t.date     "date_value"
    t.time     "time_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.text     "unit"
    t.integer  "item_id"
    t.string   "item_type"
  end

  add_index "content_items", ["composition_id"], name: "index_content_items_on_composition_id", using: :btree
  add_index "content_items", ["item_id", "item_type"], name: "index_content_items_on_item_id_and_item_type", using: :btree

  create_table "data_values", force: true do |t|
    t.string   "rm_type_name"
    t.integer  "element_id"
    t.string   "text_value"
    t.boolean  "bool_value"
    t.string   "code"
    t.float    "num_value"
    t.integer  "int_value"
    t.date     "date_value"
    t.time     "time_value"
    t.datetime "datetime_value"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_values", ["element_id"], name: "index_data_values_on_element_id", using: :btree

  create_table "ehrs", force: true do |t|
    t.string   "ehr_id",     null: false
    t.boolean  "queryable"
    t.boolean  "modifiable"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ehrs", ["ehr_id"], name: "index_ehrs_on_ehr_id", unique: true, using: :btree
  add_index "ehrs", ["person_id"], name: "index_ehrs_on_person_id", using: :btree

  create_table "identifiers", force: true do |t|
    t.string   "issuer",     null: false
    t.string   "identity",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_id"
    t.string   "party_type"
  end

  add_index "identifiers", ["party_id", "party_type"], name: "index_identifiers_on_party_id_and_party_type", using: :btree

  create_table "item_structures", force: true do |t|
    t.string   "name"
    t.string   "archetype_id"
    t.string   "node_id"
    t.text     "path"
    t.string   "rm_type_name"
    t.integer  "item_id"
    t.string   "item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "content_item_id"
    t.string   "content_item_type"
  end

  add_index "item_structures", ["content_item_id", "content_item_type"], name: "index_item_structures_on_content_item_id_and_content_item_type", using: :btree
  add_index "item_structures", ["item_id", "item_type"], name: "index_item_structures_on_item_id_and_item_type", using: :btree

  create_table "parties", force: true do |t|
    t.string   "type"
    t.integer  "identifiers_id"
    t.integer  "addresses_id"
    t.integer  "telecoms_id"
    t.string   "family_name"
    t.string   "given_name"
    t.string   "middle_name"
    t.string   "unstructured_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "people", force: true do |t|
    t.string   "family_name",       null: false
    t.string   "given_name",        null: false
    t.string   "middle_nale"
    t.string   "unstructured_name"
    t.date     "date_of_birth",     null: false
    t.string   "gender",            null: false
    t.string   "prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telecoms", force: true do |t|
    t.string   "telecom_type",  null: false
    t.string   "unstructured"
    t.string   "country_code"
    t.string   "area_code"
    t.string   "number"
    t.string   "extension"
    t.string   "email_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "party_id"
    t.string   "party_type"
  end

  add_index "telecoms", ["party_id", "party_type"], name: "index_telecoms_on_party_id_and_party_type", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
