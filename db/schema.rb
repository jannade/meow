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

ActiveRecord::Schema.define(version: 2019_02_21_050541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"



  create_table "connections", force: :cascade do |t|
    t.string "status"
    t.bigint "mentee_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_connections_on_mentee_id"
    t.index ["mentor_id"], name: "index_connections_on_mentor_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.boolean "is_read"
    t.bigint "user_id"
    t.bigint "connection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_messages_on_connection_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "profile_interests", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_profile_interests_on_interest_id"
    t.index ["profile_id"], name: "index_profile_interests_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.boolean "is_mentor"
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "job_title"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "connections", "profiles", column: "mentee_id"
  add_foreign_key "connections", "profiles", column: "mentor_id"
  add_foreign_key "messages", "connections"
  add_foreign_key "messages", "users"
  add_foreign_key "profile_interests", "interests"
  add_foreign_key "profile_interests", "profiles"
  add_foreign_key "profiles", "users"
end
