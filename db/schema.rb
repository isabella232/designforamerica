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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110312015933) do

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "screen_name"
    t.string   "website"
    t.text     "bio"
    t.boolean  "agree"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "organization"
    t.string   "cause"
    t.string   "location"
    t.text     "description"
    t.boolean  "tos"
    t.string   "size_require"
    t.string   "format_require"
    t.text     "target_audience"
    t.text     "three_things"
    t.text     "colors_want"
    t.text     "colors_donotwant"
    t.text     "how_use"
    t.text     "content_on_design"
    t.boolean  "published",              :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "creative1_file_name"
    t.string   "creative1_content_type"
    t.integer  "creative1_file_size"
    t.datetime "creative1_updated_at"
    t.string   "creative2_file_name"
    t.string   "creative2_content_type"
    t.integer  "creative2_file_size"
    t.datetime "creative2_updated_at"
    t.string   "creative3_file_name"
    t.string   "creative3_content_type"
    t.integer  "creative3_file_size"
    t.datetime "creative3_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
