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

ActiveRecord::Schema.define(version: 20171109074647) do

  create_table "commentaries", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "post_id"
    t.boolean  "active",     default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["post_id"], name: "index_commentaries_on_post_id"
    t.index ["user_id"], name: "index_commentaries_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.boolean  "active",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                               null: false
    t.boolean  "moderator",           default: false, null: false
    t.boolean  "creator",             default: false, null: false
    t.boolean  "active",              default: true,  null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",  default: "",    null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
  end

end
