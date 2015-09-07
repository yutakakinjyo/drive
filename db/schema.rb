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

ActiveRecord::Schema.define(version: 20150907065554) do

  create_table "comments", force: :cascade do |t|
    t.integer  "issue_id"
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

  create_table "issues", force: :cascade do |t|
    t.string   "title"
    t.integer  "owner_id"
    t.date     "date"
    t.string   "place"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joins", force: :cascade do |t|
    t.integer  "mtg_id"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "comment_id"
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
    t.integer  "state"
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

  create_table "tasks", force: :cascade do |t|
    t.integer  "event_plan_id"
    t.string   "content"
    t.integer  "assigned_member_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
