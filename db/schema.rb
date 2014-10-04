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

ActiveRecord::Schema.define(version: 20141004032939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "eyes"
    t.string   "skin"
    t.string   "height"
    t.integer  "weight"
    t.string   "size"
    t.string   "distiguishing_marks"
    t.integer  "level"
    t.integer  "str"
    t.integer  "dex"
    t.integer  "con"
    t.integer  "int"
    t.integer  "wis"
    t.integer  "cha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race_id"
  end

  create_table "languages", force: true do |t|
    t.integer  "languageable_id"
    t.string   "languageable_type"
    t.integer  "tongue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "languages", ["languageable_id", "languageable_type"], name: "index_languages_on_languageable_id_and_languageable_type", using: :btree

  create_table "races", force: true do |t|
    t.string   "name"
    t.integer  "str_mod"
    t.integer  "dex_mod"
    t.integer  "con_mod"
    t.integer  "int_mod"
    t.integer  "wis_mod"
    t.integer  "cha_mod"
    t.string   "size"
    t.string   "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tongues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trait_mappings", force: true do |t|
    t.integer  "traitable_id"
    t.string   "traitable_type"
    t.integer  "trait_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trait_mappings", ["traitable_id", "traitable_type"], name: "index_trait_mappings_on_traitable_id_and_traitable_type", using: :btree

  create_table "traits", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
