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

ActiveRecord::Schema.define(version: 20170622003306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeders", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "price"
    t.boolean  "delivery"
    t.string   "delivery_type"
    t.string   "image"
    t.string   "past_litters"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "breed"
    t.integer  "age"
    t.string   "location"
    t.boolean  "vaccinations"
    t.string   "sex"
    t.string   "name"
    t.string   "image"
    t.string   "breeder"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "dogs_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "dog_id",  null: false
    t.index ["dog_id", "user_id"], name: "index_dogs_users_on_dog_id_and_user_id", using: :btree
    t.index ["user_id", "dog_id"], name: "index_dogs_users_on_user_id_and_dog_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "r_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "location"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "wishlist_items", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "item_name"
    t.string   "item_type"
    t.string   "URL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
