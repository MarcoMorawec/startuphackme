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

ActiveRecord::Schema.define(:version => 20130730024107) do

  create_table "lessons", :force => true do |t|
    t.string   "name"
    t.integer  "week"
    t.string   "main_headline"
    t.string   "weekly_tagline"
    t.string   "first_ressource_headline"
    t.text     "first_ressource_text"
    t.string   "second_ressource_headline"
    t.text     "second_ressource_text"
    t.string   "third_ressource_headline"
    t.text     "third_ressource_text"
    t.string   "fourth_ressource_headline"
    t.text     "fourth_ressource_text"
    t.string   "fifth_ressource_headline"
    t.text     "fifth_ressource_text"
    t.string   "curator_name"
    t.text     "curator_description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "first_ressource_headline_link"
    t.string   "second_ressource_headline_link"
    t.string   "third_ressource_headline_link"
    t.string   "fourth_ressource_headline_link"
    t.string   "fifth_ressource_headline_link"
    t.string   "curator"
    t.string   "month"
  end

  create_table "subscribers", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
