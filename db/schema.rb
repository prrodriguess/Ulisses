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

ActiveRecord::Schema.define(version: 2021_05_20_010441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "smoking_goals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "current"
    t.bigint "desired"
    t.date "deadline"
    t.bigint "penalty"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_smoking_goals_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "user_id", null: false
    t.bigint "weight_goal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
    t.index ["weight_goal_id"], name: "index_transactions_on_weight_goal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weight_goals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "current"
    t.bigint "desired"
    t.date "deadline"
    t.bigint "penalty"
    t.bigint "user_id", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["user_id"], name: "index_weight_goals_on_user_id"
  end

  add_foreign_key "smoking_goals", "users"
  add_foreign_key "transactions", "users"
  add_foreign_key "transactions", "weight_goals"
  add_foreign_key "weight_goals", "users"
end
