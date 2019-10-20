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

ActiveRecord::Schema.define(version: 20191020031628) do

  create_table "processos", force: :cascade do |t|
    t.string "cliente"
    t.string "ex_adversa"
    t.string "natureza"
    t.string "assunto"
    t.string "tipo_acao"
    t.string "juizo"
    t.string "num_processo"
    t.string "ultima_movimentacao"
    t.date "ultimo_contato_cliente"
    t.date "contato_agendado"
    t.string "adv_principal"
    t.string "adv_assistente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
