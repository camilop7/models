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

ActiveRecord::Schema[7.0].define(version: 2023_11_29_000547) do
  create_table "coffees", force: :cascade do |t|
    t.string "origin"
    t.string "roasted_for"
    t.float "score"
    t.float "user_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "review_id", null: false
    t.index ["review_id"], name: "index_coffees_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "coffee_id"
    t.string "comments"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.datetime "date_of_birth"
  end

  add_foreign_key "coffees", "reviews"
end
