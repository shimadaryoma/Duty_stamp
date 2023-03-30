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

ActiveRecord::Schema.define(version: 2023_02_23_111503) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "enployees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "duty_status", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_enployees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_enployees_on_reset_password_token", unique: true
  end

  create_table "overtimes", force: :cascade do |t|
    t.integer "overtime_start_month"
    t.integer "overtime_start_day"
    t.integer "overtime_start_hour"
    t.integer "overtime_start_minute"
    t.integer "overtime_finish_month"
    t.integer "overtime_finish_day"
    t.integer "overtime_finish_hour"
    t.integer "overtime_finish_minute"
    t.text "overtime_request"
    t.integer "enployee_id"
    t.boolean "admit_status"
  end

  create_table "stamps", force: :cascade do |t|
    t.datetime "work_start"
    t.datetime "work_finish"
    t.text "fix_request"
    t.boolean "fix_status", default: true
    t.integer "enployee_id"
  end

end
