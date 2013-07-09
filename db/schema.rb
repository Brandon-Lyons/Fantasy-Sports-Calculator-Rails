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

ActiveRecord::Schema.define(:version => 20130622200200) do

  create_table "football_leagues", :force => true do |t|
    t.string  "name"
    t.integer "pass_td",    :default => 6
    t.integer "pass_yards", :default => 1
    t.integer "int",        :default => -2
    t.integer "pass_2pt",   :default => 2
    t.integer "rush_yards", :default => 1
    t.integer "rush_td",    :default => 6
    t.integer "rush_2pt",   :default => 2
    t.integer "rec_yards",  :default => 1
    t.integer "rec_td",     :default => 6
    t.integer "rec_2pt",    :default => 2
    t.integer "fg_made",    :default => 3
    t.integer "fg_missed",  :default => -1
    t.integer "pat_made",   :default => 1
  end

  create_table "football_players", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "position"
    t.integer "player_id"
  end

  create_table "football_teams", :force => true do |t|
    t.string "full_name"
    t.string "abbr_name"
    t.string "photo"
  end

  create_table "user_football_leagues", :force => true do |t|
    t.integer "user_id"
    t.integer "football_league_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
