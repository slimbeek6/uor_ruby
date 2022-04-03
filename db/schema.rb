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

ActiveRecord::Schema[7.0].define(version: 2022_04_03_223834) do
  create_table "chores", force: :cascade do |t|
    t.string "name"
    t.string "assigned_to"
    t.date "due_date"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "home_id"
    t.index ["home_id"], name: "index_chores_on_home_id"
  end

  create_table "epxenses", force: :cascade do |t|
    t.string "expense_name"
    t.float "expense_amount"
    t.date "exp_date"
    t.string "expenseType"
    t.boolean "paid"
    t.string "paidBy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "home_id"
    t.index ["home_id"], name: "index_epxenses_on_home_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "home_id"
    t.index ["home_id"], name: "index_events_on_home_id"
  end

  create_table "homes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_homes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_homes_on_reset_password_token", unique: true
  end

  create_table "roommates", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "phone"
    t.string "emergency_contact"
    t.string "emergency_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "home_id"
    t.index ["home_id"], name: "index_roommates_on_home_id"
  end

end
