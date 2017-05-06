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

ActiveRecord::Schema.define(version: 20170506130658) do

  create_table "building_levels", force: :cascade do |t|
    t.integer  "village_id",       limit: 4
    t.integer  "Houses",           limit: 4
    t.integer  "HQ",               limit: 4
    t.integer  "woodcutter_lodge", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "building_levels", ["village_id"], name: "index_building_levels_on_village_id", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "villages", force: :cascade do |t|
    t.string   "coordinates", limit: 255
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "v_name",      limit: 255, default: "draft"
    t.integer  "wood",        limit: 4
    t.integer  "clay",        limit: 4
    t.integer  "iron",        limit: 4
    t.integer  "population",  limit: 4
    t.integer  "farm_level",  limit: 4
    t.integer  "wood_cutter", limit: 4
    t.integer  "clay_pit",    limit: 4
    t.integer  "iron_mine",   limit: 4
  end

  add_index "villages", ["user_id"], name: "index_villages_on_user_id", using: :btree

end
