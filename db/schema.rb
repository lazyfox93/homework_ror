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

ActiveRecord::Schema.define(version: 20150804132026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "type"
    t.string   "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "available_animals", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "seller_id"
    t.float    "price"
    t.integer  "quantity"
    t.text     "note"
    t.text     "animal_picture"
    t.date     "last_show_date"
    t.float    "age"
    t.float    "weight"
    t.float    "height"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "available_animals", ["animal_id"], name: "index_available_animals_on_animal_id", using: :btree
  add_index "available_animals", ["seller_id"], name: "index_available_animals_on_seller_id", using: :btree

  create_table "sellers", force: :cascade do |t|
    t.float    "ballance"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sellers", ["user_id"], name: "index_sellers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "city"
    t.string   "country"
    t.text     "address"
    t.integer  "raiting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "available_animals", "animals"
  add_foreign_key "available_animals", "sellers"
  add_foreign_key "sellers", "users"
end
