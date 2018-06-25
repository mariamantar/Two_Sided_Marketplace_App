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

ActiveRecord::Schema.define(version: 2018_06_25_025103) do

  create_table "buyer_products", force: :cascade do |t|
    t.integer "Buyer_id"
    t.integer "Product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Buyer_id"], name: "index_buyer_products_on_Buyer_id"
    t.index ["Product_id"], name: "index_buyer_products_on_Product_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "ratings"
    t.integer "User_id"
    t.integer "Profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Profile_id"], name: "index_buyers_on_Profile_id"
    t.index ["User_id"], name: "index_buyers_on_User_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "cost"
    t.integer "quantity"
    t.string "description"
    t.string "reviews"
    t.string "picture"
    t.integer "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seller_id"], name: "index_products_on_seller_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "username"
    t.string "biography"
    t.string "ratings"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_profiles_on_User_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "listings"
    t.string "ratings"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_sellers_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
