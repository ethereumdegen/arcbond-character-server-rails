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

ActiveRecord::Schema.define(version: 2019_06_12_183436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heros", force: :cascade do |t|
    t.string "hero_uuid"
    t.integer "version_number", default: 0, null: false
    t.string "name"
    t.integer "faction", default: 0, null: false
    t.datetime "last_session_start"
    t.datetime "last_session_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_heros_on_hero_uuid"
  end

  create_table "inventory_slots", force: :cascade do |t|
    t.integer "slot_id", default: 0, null: false
    t.integer "item_id", default: 0, null: false
    t.string "item_name", null: false
    t.integer "item_quantity", default: 0, null: false
    t.string "hero_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_inventory_slots_on_hero_uuid"
  end

  create_table "perks", force: :cascade do |t|
    t.string "name", null: false
    t.integer "level", default: 0, null: false
    t.string "hero_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_perks_on_hero_uuid"
  end

  create_table "quests", force: :cascade do |t|
    t.string "name", null: false
    t.integer "progress", default: 0, null: false
    t.string "hero_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_quests_on_hero_uuid"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "learned", null: false
    t.string "hero_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_spells_on_hero_uuid"
  end

  create_table "stats", force: :cascade do |t|
    t.string "name", null: false
    t.integer "amount", default: 0, null: false
    t.string "hero_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_uuid"], name: "index_stats_on_hero_uuid"
  end

end
