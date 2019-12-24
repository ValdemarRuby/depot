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

ActiveRecord::Schema.define(version: 2019_12_24_071511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_emails", force: :cascade do |t|
    t.string "address"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_emails_on_card_id"
  end

  create_table "card_phones", force: :cascade do |t|
    t.string "nmbr"
    t.integer "location"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_phones_on_card_id"
  end

  create_table "card_socials", force: :cascade do |t|
    t.string "url"
    t.integer "king"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_socials_on_card_id"
  end

  create_table "card_websites", force: :cascade do |t|
    t.string "url"
    t.string "name"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_websites_on_card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "title"
    t.string "card_name"
    t.integer "user_id"
    t.string "image"
    t.string "background"
    t.boolean "background_tile"
    t.integer "membership_id"
    t.string "background1_color"
    t.string "background2_color"
    t.string "address_color"
    t.string "details_color"
    t.string "name_color"
    t.string "icon_color"
    t.string "business_name"
    t.string "qrcode_image_id"
    t.string "qrcode"
    t.boolean "sign_qrcode_created"
    t.string "sign_qrcode"
    t.string "sign_qrcode_image_id"
    t.boolean "qrcode_created"
    t.integer "qrcode_scans_count"
    t.string "url_alias"
    t.text "advanced_data"
    t.string "logo"
    t.string "user_token"
    t.index ["url_alias"], name: "index_cards_on_url_alias"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.bigint "order_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["product_id"], name: "index_line_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "email"
    t.string "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "cards"
    t.integer "teams"
    t.integer "trial_days", default: 0, null: false
    t.integer "shares"
    t.string "support_type", default: "full", null: false
    t.string "stripe_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image_url"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "user_id"
    t.string "paypal_customer_token"
    t.string "paypal_recurring_profile_token"
    t.string "email"
    t.string "stripe_customer_token"
    t.datetime "last_payment_date"
    t.string "more_cards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_subscriptions_on_plan_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vanities", force: :cascade do |t|
    t.string "name"
    t.integer "vain_id"
    t.string "vain_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_vanities_on_name", unique: true
    t.index ["vain_id"], name: "index_vanities_on_vain_id"
    t.index ["vain_type"], name: "index_vanities_on_vain_type"
  end

  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "orders"
  add_foreign_key "line_items", "products"
end
