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

ActiveRecord::Schema[7.1].define(version: 2024_11_25_163951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bicycle_components", force: :cascade do |t|
    t.bigint "bicycle_id", null: false
    t.bigint "component_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_bicycle_components_on_bicycle_id"
    t.index ["component_id"], name: "index_bicycle_components_on_component_id"
  end

  create_table "bicycles", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "serial_number"
    t.text "description"
    t.string "make"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bicycles_on_user_id"
  end

  create_table "components", force: :cascade do |t|
    t.string "make"
    t.string "name"
    t.string "serial_number"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurance_policies", force: :cascade do |t|
    t.string "insurer"
    t.string "policy_number"
    t.text "description"
    t.bigint "bicycle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_insurance_policies_on_bicycle_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.date "date"
    t.string "shop"
    t.text "description"
    t.bigint "bicycle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_maintenances_on_bicycle_id"
  end

  create_table "rides", force: :cascade do |t|
    t.string "name"
    t.float "start_lat"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id", null: false
    t.float "start_long"
    t.float "end_lat"
    t.float "end_long"
    t.float "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rides_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_rides", force: :cascade do |t|
    t.bigint "bicycle_id", null: false
    t.bigint "user_id", null: false
    t.bigint "ride_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_users_rides_on_bicycle_id"
    t.index ["ride_id"], name: "index_users_rides_on_ride_id"
    t.index ["user_id"], name: "index_users_rides_on_user_id"
  end

  create_table "warranties", force: :cascade do |t|
    t.string "issuer"
    t.date "start_date"
    t.date "end_date"
    t.bigint "bicycle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bicycle_id"], name: "index_warranties_on_bicycle_id"
  end

  add_foreign_key "bicycle_components", "bicycles"
  add_foreign_key "bicycle_components", "components"
  add_foreign_key "bicycles", "users"
  add_foreign_key "insurance_policies", "bicycles"
  add_foreign_key "maintenances", "bicycles"
  add_foreign_key "rides", "users"
  add_foreign_key "users_rides", "bicycles"
  add_foreign_key "users_rides", "rides"
  add_foreign_key "users_rides", "users"
  add_foreign_key "warranties", "bicycles"
end
