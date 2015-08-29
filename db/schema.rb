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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150829184209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "avatar"
    t.text     "bio"
    t.string   "address"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "website"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end


  create_table "categories", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "piece_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["piece_id"], name: "index_categories_on_piece_id", using: :btree
  add_index "categories", ["tag_id"], name: "index_categories_on_tag_id", using: :btree


  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "avatar"
    t.string   "address"
    t.string   "email"
    t.string   "password_digest"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "website"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.string   "img"
    t.string   "title"
    t.text     "description"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pieces", ["artist_id"], name: "index_pieces_on_artist_id", using: :btree

  create_table "spaces", force: :cascade do |t|
    t.string   "img"
    t.string   "title"
    t.text     "guidelines"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "spaces", ["organization_id"], name: "index_spaces_on_organization_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

<<<<<<< HEAD
  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

=======
  add_foreign_key "categories", "pieces"
  add_foreign_key "categories", "tags"
>>>>>>> development
  add_foreign_key "pieces", "artists"
  add_foreign_key "spaces", "organizations"
end
