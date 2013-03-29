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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130329143033) do

  create_table "matches", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "player1"
    t.string   "player2"
    t.string   "parentTournament"
    t.string   "links"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end
=======
ActiveRecord::Schema.define(:version => 20121125152905) do
>>>>>>> f6972627193d47708b490244c17e08476b87a05c

  create_table "tournament_requests", :force => true do |t|
    t.integer  "tourny_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tournaments", :force => true do |t|
    t.string   "start_date"
    t.string   "name"
    t.string   "sponsor"
    t.string   "location"
    t.string   "prizes"
    t.string   "entry_reqs"
    t.string   "format"
    t.string   "status"
    t.string   "links"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
<<<<<<< HEAD
    t.boolean  "subscribed"
    t.boolean  "ongoing"
    t.boolean  "past"
    t.boolean  "future"
=======
>>>>>>> f6972627193d47708b490244c17e08476b87a05c
  end

end
