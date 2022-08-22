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

ActiveRecord::Schema[7.0].define(version: 2022_07_07_145451) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "constructors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo_url"
    t.string "cover_url"
    t.integer "first_apparence"
    t.string "origins"
    t.integer "titles"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points"
    t.string "car_url"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "avatar_url"
    t.string "description"
    t.string "first_name"
    t.string "last_name"
    t.integer "race_number"
    t.string "nickname"
    t.bigint "constructor_id", null: false
    t.date "birth_date"
    t.string "nationality"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points"
    t.index ["constructor_id"], name: "index_drivers_on_constructor_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.date "date"
    t.string "cover_url"
    t.string "description"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.bigint "constructor_id", null: false
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["constructor_id"], name: "index_sponsors_on_constructor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "first_name"
    t.string "last_name"
    t.string "avatar_url"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "drivers", "constructors"
  add_foreign_key "sponsors", "constructors"
end
