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

ActiveRecord::Schema.define(version: 20151215002150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "enigma_id"
    t.text     "wrong_answers", default: [],                 array: true
    t.string   "right_answer"
    t.datetime "solved_at"
    t.boolean  "clue_used",     default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "answers", ["enigma_id"], name: "index_answers_on_enigma_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "enigmas", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "difficulty"
    t.string   "label"
    t.text     "description"
    t.text     "clue"
    t.string   "right_answer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "enigmas", ["theme_id"], name: "index_enigmas_on_theme_id", using: :btree

  create_table "progressions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "history",     default: 1,     null: false
    t.integer  "philosophy",  default: 1,     null: false
    t.integer  "maths",       default: 1,     null: false
    t.integer  "technology",  default: 1,     null: false
    t.integer  "score",       default: 0
    t.boolean  "last_theme",  default: false
    t.boolean  "last_enigma", default: false
    t.datetime "finish_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "progressions", ["user_id"], name: "index_progressions_on_user_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.string   "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nom"
    t.string   "email"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "answers", "enigmas"
  add_foreign_key "answers", "users"
  add_foreign_key "enigmas", "themes"
  add_foreign_key "progressions", "users"
end
