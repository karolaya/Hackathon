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

ActiveRecord::Schema.define(version: 20170616144501) do

  create_table "institutions", force: :cascade do |t|
    t.string "nombre"
    t.string "ciudad"
    t.string "tipo"
    t.integer "estrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "identificacion"
    t.string "nombre"
    t.integer "institution_id"
    t.float "nota9a"
    t.float "nota9e"
    t.float "nota10a"
    t.float "nota10e"
    t.float "nota11a"
    t.float "nota11e"
    t.float "icfes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
