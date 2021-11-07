# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_05_202000) do

  create_table "movies", force: :cascade do |t|
    t.string "titulo"
    t.string "sinopsis"
    t.string "url"
    t.datetime "estreno"
    t.datetime "fin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "nombre"
    t.string "cedula"
    t.string "celular"
    t.string "correo"
    t.integer "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "fechaReserva"
    t.index ["movie_id"], name: "index_reservations_on_movie_id"
  end

  add_foreign_key "reservations", "movies"
end
