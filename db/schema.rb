# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130315055352) do

  create_table "addresses", :force => true do |t|
    t.integer  "street_number"
    t.string   "street_number_suffix"
    t.string   "street_type"
    t.string   "street_direction"
    t.string   "address_type"
    t.string   "address_type_identifier"
    t.string   "minor_municipality"
    t.string   "city_town"
    t.string   "province_state_county"
    t.string   "postal_area"
    t.string   "country"
    t.string   "address_kind"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "addressable_id"
    t.string   "addressable_type"
  end

  create_table "appetizers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "appetizers_menus", :id => false, :force => true do |t|
    t.integer "menu_id"
    t.integer "appetizer_id"
  end

  add_index "appetizers_menus", ["appetizer_id", "menu_id"], :name => "index_appetizers_menus_on_appetizer_id_and_menu_id"
  add_index "appetizers_menus", ["menu_id", "appetizer_id"], :name => "index_appetizers_menus_on_menu_id_and_appetizer_id"

  create_table "chef_applications", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "city"
    t.integer  "phone_number"
    t.text     "about_me"
    t.text     "motivation"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "profile_pic"
  end

  create_table "desserts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "desserts_menus", :id => false, :force => true do |t|
    t.integer "menu_id"
    t.integer "dessert_id"
  end

  add_index "desserts_menus", ["dessert_id", "menu_id"], :name => "index_desserts_menus_on_dessert_id_and_menu_id"
  add_index "desserts_menus", ["menu_id", "dessert_id"], :name => "index_desserts_menus_on_menu_id_and_dessert_id"

  create_table "entrees", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "entrees_menus", :id => false, :force => true do |t|
    t.integer "menu_id"
    t.integer "entree_id"
  end

  add_index "entrees_menus", ["entree_id", "menu_id"], :name => "index_entrees_menus_on_entree_id_and_menu_id"
  add_index "entrees_menus", ["menu_id", "entree_id"], :name => "index_entrees_menus_on_menu_id_and_entree_id"

  create_table "event_menus", :id => false, :force => true do |t|
    t.boolean  "selected_menu"
    t.integer  "event_id"
    t.integer  "menu_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "final_price"
    t.date     "event_date"
    t.time     "start_time"
    t.time     "end_time"
    t.float    "event_price"
    t.integer  "number_of_guests"
    t.integer  "budget"
    t.string   "occasion"
    t.integer  "num_of_entrees"
    t.integer  "num_of_appetizers"
    t.integer  "num_of_desserts"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "user_id"
  end

  create_table "menus", :force => true do |t|
    t.float    "offered_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
  end

  create_table "photos", :force => true do |t|
    t.string   "file_path"
    t.string   "caption"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
