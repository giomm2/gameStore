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

ActiveRecord::Schema.define(version: 20171008184635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "category_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consoles", force: :cascade do |t|
    t.string "console_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.integer "price", null: false
    t.integer "quantity", default: 1
    t.string "image_one_file_name"
    t.string "image_one_content_type"
    t.integer "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string "{:null=>false}_file_name"
    t.string "{:null=>false}_content_type"
    t.integer "{:null=>false}_file_size"
    t.datetime "{:null=>false}_updated_at"
    t.string "image_two_file_name"
    t.string "image_two_content_type"
    t.integer "image_two_file_size"
    t.datetime "image_two_updated_at"
    t.string "image_three_file_name"
    t.string "image_three_content_type"
    t.integer "image_three_file_size"
    t.datetime "image_three_updated_at"
    t.date "out_date", null: false
    t.string "url_trailer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "console_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["console_id"], name: "index_products_on_console_id"
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products", "consoles"
end
