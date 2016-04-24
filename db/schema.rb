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

ActiveRecord::Schema.define(version: 20160424023906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "delivery_statuses", force: :cascade do |t|
    t.string   "status_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.decimal  "total_amount_purchased"
    t.datetime "purchase_date"
    t.integer  "payment_type_id"
    t.text     "delivery_address"
    t.datetime "delivery_date"
    t.datetime "recieve_date"
    t.integer  "delivery_status_id"
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "customerphone"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "invoices", ["delivery_status_id"], name: "index_invoices_on_delivery_status_id", using: :btree
  add_index "invoices", ["payment_type_id"], name: "index_invoices_on_payment_type_id", using: :btree

  create_table "invoices_products", force: :cascade do |t|
    t.integer  "invoice_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "name_of_payment_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "product_units", force: :cascade do |t|
    t.string   "product_unit_name"
    t.string   "product_unit_abbreviation"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.decimal  "price"
    t.integer  "amount_in_stock"
    t.integer  "product_unit_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.decimal  "package_size"
    t.text     "description"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["product_unit_id"], name: "index_products_on_product_unit_id", using: :btree

  create_table "sites", force: :cascade do |t|
    t.string   "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "invoices", "delivery_statuses"
  add_foreign_key "invoices", "payment_types"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "product_units"
end
