# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_04_30_181635) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schedule_shows", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "show_id"
    t.integer "schedule_id"
    t.index ["schedule_id", "show_id"], name: "index_schedule_shows_on_schedule_id_and_show_id", unique: true
    t.index ["schedule_id"], name: "index_schedule_shows_on_schedule_id"
    t.index ["show_id"], name: "index_schedule_shows_on_show_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "show_users", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_show_users_on_show_id"
    t.index ["user_id"], name: "index_show_users_on_user_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "time"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  add_foreign_key "schedules", "users"
  add_foreign_key "show_users", "shows"
  add_foreign_key "show_users", "users"
end
