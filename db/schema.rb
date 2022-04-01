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

ActiveRecord::Schema.define(version: 2022_03_31_141602) do

  create_table "activities", force: :cascade do |t|
    t.string "actor_type"
    t.integer "actor_id"
    t.string "subject_type"
    t.integer "subject_id"
    t.string "parent_type"
    t.integer "parent_id"
    t.text "attribute_changes"
    t.string "activity_type"
    t.string "human_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["actor_type", "actor_id"], name: "index_activities_on_actor_type_and_actor_id"
    t.index ["parent_type", "parent_id"], name: "index_activities_on_parent_type_and_parent_id"
    t.index ["subject_type", "subject_id"], name: "index_activities_on_subject_type_and_subject_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.string "object_change"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
