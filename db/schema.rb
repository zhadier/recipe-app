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

ActiveRecord::Schema[7.0].define(version: 2022_05_18_174434) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_ingredients", force: :cascade do |t|
    t.integer "Quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_id", null: false
    t.bigint "receipe_id", null: false
    t.index ["food_id"], name: "index_food_ingredients_on_food_id"
    t.index ["receipe_id"], name: "index_food_ingredients_on_receipe_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "measurement_unit", default: "units"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_foods_on_user_id"
  end

  create_table "receipes", force: :cascade do |t|
    t.string "Name"
    t.string "PreparationTime"
    t.string "CookingTime"
    t.boolean "Public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_receipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "food_ingredients", "foods"
  add_foreign_key "food_ingredients", "receipes"
  add_foreign_key "foods", "users"
  add_foreign_key "receipes", "users"
end
