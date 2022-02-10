# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_10_140756) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "glues", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "task_id", null: false
    t.bigint "label_id", null: false
    t.index ["label_id"], name: "index_glues_on_label_id"
    t.index ["task_id"], name: "index_glues_on_task_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "label_name"
    t.text "label_details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name"
    t.text "task_details"
    t.datetime "task_deadline"
    t.boolean "task_done"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "glues", "labels"
  add_foreign_key "glues", "tasks"
end
