# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_13_194011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "milestones", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "liveline"
    t.bigint "roadmap_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["roadmap_id"], name: "index_milestones_on_roadmap_id"
  end

  create_table "roadmaps", force: :cascade do |t|
    t.string "the_one_thing"
    t.text "the_why_of_one_thing"
    t.string "the_one_habit"
    t.date "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "milestones", "roadmaps"
end