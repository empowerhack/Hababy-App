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

ActiveRecord::Schema.define(version: 20151129160642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advices", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.integer "country_id"
    t.integer "symptom_id"
    t.integer "topic_id"
    t.string  "arabic_title"
    t.string  "arabic_description"
  end

  create_table "countries", force: :cascade do |t|
    t.string "iso"
    t.string "iso3"
    t.string "name"
  end

  create_table "symptoms", force: :cascade do |t|
    t.text    "description"
    t.string  "title"
    t.integer "term_id"
    t.text    "arabic_description"
    t.string  "arabic_title"
  end

  create_table "terms", force: :cascade do |t|
    t.integer "month"
    t.boolean "ante_natal"
    t.boolean "post_natal"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.text   "arabic_name"
    t.string "arabic_description"
  end

end
