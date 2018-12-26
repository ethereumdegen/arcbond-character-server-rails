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

ActiveRecord::Schema.define(version: 2018_12_26_225714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_buffs", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "buff_id"
    t.integer "buff_started_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_players", force: :cascade do |t|
    t.integer "player_id"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applied_effects", force: :cascade do |t|
    t.integer "applied_id"
    t.string "applied_type"
    t.integer "effect_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buff_types", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "effect_types", force: :cascade do |t|
    t.string "name"
    t.integer "effect_base"
    t.integer "art_effect"
    t.integer "art_attachment_point"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_types", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "art"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "tick_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spell_types", force: :cascade do |t|
    t.string "name"
    t.integer "cast_style"
    t.string "icon"
    t.integer "cooldown"
    t.integer "manacost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_stats", force: :cascade do |t|
    t.integer "life"
    t.integer "mana"
    t.float "x"
    t.float "y"
    t.float "z"
    t.float "r"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
