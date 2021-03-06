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

ActiveRecord::Schema.define(version: 2021_09_21_111515) do

  create_table "closet_data", force: :cascade do |t|
    t.string "type"
    t.string "color"
    t.integer "season"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "item", limit: 128, null: false
    t.string "color", limit: 128, null: false
    t.integer "season"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weight_histories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "weight"
    t.string "memo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weight_histories_on_user_id"
  end

  create_table "weight_history2s", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "weight"
    t.string "memo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weight_history2s_on_user_id"
  end

  add_foreign_key "weight_histories", "users"
  add_foreign_key "weight_history2s", "users"
end
