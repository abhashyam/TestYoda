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

ActiveRecord::Schema.define(version: 20140909194718) do

  create_table "permutations", force: true do |t|
    t.text    "name"
    t.string  "sha"
    t.integer "last_success"
    t.string  "application"
  end

  add_index "permutations", ["sha"], name: "sha", unique: true, using: :btree

  create_table "run_details", id: false, force: true do |t|
    t.integer "permutation",                null: false
    t.integer "run",                        null: false
    t.text    "result"
    t.text    "failure_message"
    t.text    "tags"
    t.float   "execution_time",  limit: 24
  end

  add_index "run_details", ["permutation"], name: "index_run_details_on_permutation", using: :btree
  add_index "run_details", ["run"], name: "index_run_details_on_run", using: :btree

  create_table "runs", force: true do |t|
    t.datetime "timestamp"
    t.string   "application"
    t.integer  "passed"
    t.integer  "failed"
    t.integer  "pending"
    t.integer  "primary_run"
    t.text     "run_data"
  end

end
