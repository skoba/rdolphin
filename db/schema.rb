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

ActiveRecord::Schema.define(version: 20140612170542) do

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
    t.integer  "person_id"
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id", using: :btree

  create_table "archetypes", force: true do |t|
    t.string   "archetypeid"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compositions", force: true do |t|
    t.integer  "ehr_id"
    t.string   "uid",          null: false
    t.string   "category",     null: false
    t.datetime "start_time"
    t.string   "archetype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compositions", ["ehr_id"], name: "index_compositions_on_ehr_id", using: :btree

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
    t.integer  "person_id"
  end

  add_index "identifiers", ["person_id"], name: "index_identifiers_on_person_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "first_name",        null: false
    t.string   "given_name",        null: false
    t.string   "middle_nale"
    t.string   "unstructured_name"
    t.date     "date_of_birth",     null: false
    t.string   "gender",            null: false
    t.string   "prefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rms", force: true do |t|
    t.string   "node_id"
    t.string   "path"
    t.integer  "archetype_id"
    t.string   "text_value"
    t.float    "num_value"
    t.date     "date_value"
    t.time     "time_value"
    t.boolean  "bool_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rms", ["archetype_id"], name: "index_rms_on_archetype_id", using: :btree

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
    t.integer  "person_id"
  end

  add_index "telecoms", ["person_id"], name: "index_telecoms_on_person_id", using: :btree

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
