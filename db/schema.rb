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

ActiveRecord::Schema.define(version: 20150912005838) do

  create_table "comments", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "member_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "owner_id"
    t.integer  "conference_id"
    t.string   "type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "joins", force: :cascade do |t|
    t.integer  "mtg_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_lists", force: :cascade do |t|
    t.integer  "community_id"
    t.integer  "member_id"
    t.integer  "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "email"
  end

  create_table "sponsors", force: :cascade do |t|
    t.integer  "event_plan_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "state"
    t.integer  "event_id"
    t.integer  "owner_id"
    t.integer  "assign_member_id"
    t.integer  "prev_state_subject_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
