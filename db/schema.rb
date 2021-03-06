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

ActiveRecord::Schema.define(version: 20151201091549) do

  create_table "facts", force: :cascade do |t|
    t.string   "key",        null: false
    t.string   "value",      null: false
    t.string   "notes"
    t.integer  "source_id",  null: false
    t.integer  "person_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "facts", ["key"], name: "index_facts_on_key"
  add_index "facts", ["person_id"], name: "index_facts_on_person_id"
  add_index "facts", ["source_id"], name: "index_facts_on_source_id"
  add_index "facts", ["value"], name: "index_facts_on_value"

  create_table "people", force: :cascade do |t|
    t.boolean  "homepage",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "url"
    t.integer  "authority",   null: false
    t.string   "description"
    t.string   "key",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sources", ["authority"], name: "index_sources_on_authority"
  add_index "sources", ["key"], name: "index_sources_on_key"

end
