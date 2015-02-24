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

ActiveRecord::Schema.define(version: 20150224232637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invoices", id: false, force: :cascade do |t|
    t.string   "number",     limit: 15,             null: false
    t.string   "reference",  limit: 6,              null: false
    t.date     "due_date",                          null: false
    t.date     "issue_date",                        null: false
    t.integer  "user_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "status",     limit: 2,  default: 0
  end

  add_index "invoices", ["number"], name: "index_invoices_on_number", unique: true, using: :btree
  add_index "invoices", ["user_id"], name: "index_invoices_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "description",                                     null: false
    t.decimal  "value",                  precision: 15, scale: 3, null: false
    t.string   "invoice_id",  limit: 15,                          null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "items", ["invoice_id"], name: "index_items_on_invoice_id", using: :btree

  create_table "tab_params", force: :cascade do |t|
    t.integer  "application", limit: 2, null: false
    t.integer  "year",                  null: false
    t.integer  "operation",   limit: 2, null: false
    t.integer  "number",      limit: 8, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",     limit: 50,             null: false
    t.string   "last_name",      limit: 50,             null: false
    t.string   "email_address",  limit: 80,             null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "invoices_count",            default: 0
  end

  add_index "users", ["email_address"], name: "index_users_on_email_address", unique: true, using: :btree

  add_foreign_key "invoices", "users"
end
