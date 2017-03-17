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

ActiveRecord::Schema.define(version: 20170226220321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.integer  "provider_selection_id"
    t.integer  "betslip_id"
    t.integer  "event_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["betslip_id"], name: "index_bets_on_betslip_id", using: :btree
    t.index ["event_id"], name: "index_bets_on_event_id", using: :btree
  end

  create_table "betslips", force: :cascade do |t|
    t.float    "stake"
    t.boolean  "outcome"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_betslips_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "sport"
    t.integer  "betfair_ev_id"
    t.integer  "provider_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "event_start_time"
    t.string   "status"
    t.boolean  "live_status"
    t.index ["provider_id"], name: "index_events_on_provider_id", using: :btree
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "market_catalogues", force: :cascade do |t|
    t.jsonb    "betfair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marketodds", force: :cascade do |t|
    t.integer  "betfair_ev_id"
    t.string   "marketid"
    t.string   "selectionid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "event_id"
    t.jsonb    "provider_price"
    t.index ["event_id"], name: "index_marketodds_on_event_id", using: :btree
  end

  create_table "markettypeodds", force: :cascade do |t|
    t.boolean  "status"
    t.string   "name"
    t.integer  "provider_selection_id"
    t.float    "price"
    t.integer  "markettype_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["markettype_id"], name: "index_markettypeodds_on_markettype_id", using: :btree
  end

  create_table "markettypes", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.string   "provider_market_type_id"
    t.string   "integer"
    t.integer  "event_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["event_id"], name: "index_markettypes_on_event_id", using: :btree
  end

  create_table "pinnacle_fixtures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinnacles", force: :cascade do |t|
    t.integer  "sport"
    t.jsonb    "fixture"
    t.jsonb    "odds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "repost_id"
    t.string   "betslip"
    t.index ["user_id"], name: "index_posts_on_user_id", using: :btree
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "providerodds"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "records", force: :cascade do |t|
    t.jsonb    "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
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
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "wins",            default: 0
    t.integer  "losses",          default: 0
    t.integer  "betsplaced",      default: 0
    t.integer  "points",          default: 0
    t.string   "username"
  end

  add_foreign_key "bets", "betslips"
  add_foreign_key "bets", "events"
  add_foreign_key "betslips", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "providers"
  add_foreign_key "marketodds", "events"
  add_foreign_key "markettypeodds", "markettypes"
  add_foreign_key "markettypes", "events"
  add_foreign_key "posts", "users"
end
