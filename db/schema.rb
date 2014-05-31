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

ActiveRecord::Schema.define(version: 20140531021356) do

  create_table "agencies", force: true do |t|
    t.text     "frequency"
    t.text     "restrictions"
    t.text     "hours_of_operation"
    t.integer  "address_id"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "services"
    t.text     "geographic_restrictions"
    t.integer  "family_stipulations"
    t.boolean  "faith_based"
    t.boolean  "is_active"
    t.text     "general_information"
    t.boolean  "acfb_certified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
