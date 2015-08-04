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

ActiveRecord::Schema.define(version: 20150804161223) do

  create_table "Ciudad", primary_key: "codCiudad", force: :cascade do |t|
    t.string "nombre", limit: 20, null: false
    t.string "pais",   limit: 20, null: false
  end

  create_table "Favoritos", id: false, force: :cascade do |t|
    t.string "codUsuario",     limit: 20, null: false
    t.string "codRestaurante", limit: 10, null: false
  end

  add_index "Favoritos", ["codRestaurante"], name: "FK_favoritos_restaurante", using: :btree

  create_table "Restaurantes", primary_key: "codRestaurante", force: :cascade do |t|
    t.string  "nombreRestaurante", limit: 20, null: false
    t.integer "codCiudad",         limit: 4,  null: false
  end

  create_table "Usuarios", primary_key: "idUsuario", force: :cascade do |t|
    t.string "clave", limit: 20, null: false
    t.string "email", limit: 30, null: false
  end

  create_table "ciudads", force: :cascade do |t|
  end

  create_table "favoritos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string   "codRestaurante",    limit: 255
    t.string   "nombreRestaurante", limit: 255
    t.integer  "codCiudad",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "idUsuario",  limit: 255
    t.string   "clave",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "Favoritos", "Restaurantes", column: "codRestaurante", primary_key: "codRestaurante", name: "FK_favoritos_restaurante"
  add_foreign_key "Favoritos", "Usuarios", column: "codUsuario", primary_key: "idUsuario", name: "FK_favoritos_usuario"
end
