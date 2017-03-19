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

ActiveRecord::Schema.define(version: 20170319162609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bio_score_weights", force: :cascade do |t|
    t.float    "completed"
    t.float    "verified"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cooperative_weights", force: :cascade do |t|
    t.float    "registered_cooperative"
    t.float    "know_cooperative"
    t.float    "leadership_position"
    t.float    "active_member"
    t.float    "credit_score_from_cooperative"
    t.float    "verified"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "image"
  end

  create_table "edu_score_weights", force: :cascade do |t|
    t.float    "school_name"
    t.float    "fresher"
    t.float    "mid_year"
    t.float    "last_year"
    t.float    "higher_degree"
    t.float    "first_degree"
    t.float    "others"
    t.float    "verified"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string   "status"
    t.datetime "start"
    t.datetime "end"
    t.float    "average_income"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_employments_on_user_id", using: :btree
  end

  create_table "expenditures", force: :cascade do |t|
    t.string   "expense_type"
    t.float    "amount"
    t.integer  "period"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.index ["user_id"], name: "index_expenditures_on_user_id", using: :btree
  end

  create_table "fin_trader_weights", force: :cascade do |t|
    t.float    "business_revenue"
    t.float    "business_type"
    t.float    "verified"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "financial_score_weights", force: :cascade do |t|
    t.float    "self_sponsored"
    t.float    "government_sponsored"
    t.float    "family_sponsored"
    t.float    "verified"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "guarantor_score_weights", force: :cascade do |t|
    t.float    "employed_govt"
    t.float    "employed_unknow_comp"
    t.float    "guarantor_score"
    t.float    "verified"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "guarantors", force: :cascade do |t|
    t.string   "fullname"
    t.string   "business"
    t.float    "annual_income"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image"
    t.index ["user_id"], name: "index_guarantors_on_user_id", using: :btree
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.string   "loan"
    t.integer  "amount"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "degree"
    t.string   "image"
    t.index ["user_id"], name: "index_institutions_on_user_id", using: :btree
  end

  create_table "mobile_data_weights", force: :cascade do |t|
    t.float    "data_usage"
    t.float    "call_duration"
    t.float    "installing_app"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "savings", force: :cascade do |t|
    t.string   "account_number"
    t.float    "amount"
    t.datetime "date"
    t.string   "image"
    t.boolean  "verified",       default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_savings_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "country"
    t.string   "phonenumber"
    t.date     "dateofbirth"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_foreign_key "employments", "users"
  add_foreign_key "expenditures", "users"
  add_foreign_key "guarantors", "users"
  add_foreign_key "institutions", "users"
  add_foreign_key "savings", "users"
end
