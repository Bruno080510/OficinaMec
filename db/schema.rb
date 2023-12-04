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

ActiveRecord::Schema[7.1].define(version: 2023_12_04_220429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "modelo"
    t.string "marca"
    t.integer "ano"
    t.text "description"
    t.string "placa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "oficina_id"
    t.integer "servico_id"
    t.bigint "equipe_id"
    t.index ["equipe_id"], name: "index_cars_on_equipe_id"
  end

  create_table "equipes", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mecanicos", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "equipe_id"
    t.index ["equipe_id"], name: "index_mecanicos_on_equipe_id"
  end

  create_table "oficinas", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pecas", force: :cascade do |t|
    t.string "name"
    t.integer "quantidade"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "servico_id"
    t.index ["servico_id"], name: "index_pecas_on_servico_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "tipoDeServico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "car_id"
    t.float "valor"
    t.bigint "peca_id"
    t.index ["car_id"], name: "index_servicos_on_car_id"
    t.index ["peca_id"], name: "index_servicos_on_peca_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cars", "equipes"
  add_foreign_key "mecanicos", "equipes"
  add_foreign_key "pecas", "servicos"
  add_foreign_key "servicos", "cars"
  add_foreign_key "servicos", "pecas"
end
