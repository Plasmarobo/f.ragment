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

ActiveRecord::Schema.define(version: 20140518223334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: true do |t|
    t.integer  "program_id"
    t.integer  "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_syncs", force: true do |t|
    t.integer  "game_id"
    t.datetime "start_time"
    t.boolean  "started"
    t.datetime "pause_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "client_start"
    t.datetime "client_pause"
    t.datetime "time_offset"
  end

  create_table "games", force: true do |t|
    t.integer  "level_id"
    t.string   "name"
    t.integer  "difficulty"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seed"
    t.string   "music"
  end

  create_table "identities", force: true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "token"
    t.string   "secret"
    t.datetime "expires_at"
    t.string   "email"
    t.string   "nickname"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.integer  "story_id"
    t.integer  "time_limit"
    t.integer  "fragment_speed"
    t.integer  "program_id"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multiplayers", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "permission_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_fragment_references", force: true do |t|
    t.integer  "block_id"
    t.integer  "playerfragment_id"
    t.integer  "thread"
    t.integer  "line"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_fragments", force: true do |t|
    t.string   "display_text"
    t.string   "function"
    t.integer  "time"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "size_limit"
    t.integer  "system_fragments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "javascript"
  end

  create_table "system_fragment_references", force: true do |t|
    t.integer  "block_id"
    t.integer  "systemfragment_id"
    t.integer  "thread"
    t.integer  "line"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "system_fragments", force: true do |t|
    t.string   "display_text"
    t.string   "function"
    t.integer  "time"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_preferences", force: true do |t|
    t.integer  "user_id"
    t.integer  "text_speed"
    t.string   "theme"
    t.boolean  "autoplay"
    t.boolean  "animation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "audio"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "image"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "roles_mask"
    t.string   "encrypted_password"
    t.string   "reset_password_tokent"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "workspace_entries", force: true do |t|
    t.integer  "workspace_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspaces", force: true do |t|
    t.integer  "game_id"
    t.integer  "variable_limit"
    t.integer  "register_limit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
