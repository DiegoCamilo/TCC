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

ActiveRecord::Schema.define(:version => 20130330011256) do

  create_table "coordenadors", :force => true do |t|
    t.integer  "pessoa_id"
    t.integer  "curso_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "coordenadors", ["curso_id"], :name => "index_coordenadors_on_curso_id"
  add_index "coordenadors", ["pessoa_id"], :name => "index_coordenadors_on_pessoa_id"

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "diretors", :force => true do |t|
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "diretors", ["pessoa_id"], :name => "index_diretors_on_pessoa_id"

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "horarios", :force => true do |t|
    t.integer  "professor_id"
    t.string   "dia_semana"
    t.boolean  "horario1"
    t.boolean  "horario2"
    t.boolean  "horario3"
    t.boolean  "horario4"
    t.boolean  "horario5"
    t.boolean  "horario6"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "horarios", ["professor_id"], :name => "index_horarios_on_professor_id"

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  create_table "preferencia_professors", :force => true do |t|
    t.integer  "professor_id"
    t.integer  "disciplina_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "preferencia_professors", ["disciplina_id"], :name => "index_preferencia_professors_on_disciplina_id"
  add_index "preferencia_professors", ["professor_id"], :name => "index_preferencia_professors_on_professor_id"

  create_table "professors", :force => true do |t|
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "professors", ["pessoa_id"], :name => "index_professors_on_pessoa_id"

  create_table "turmas", :force => true do |t|
    t.integer  "curso_id"
    t.string   "periodo_turma"
    t.string   "turno"
    t.string   "nome"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "turmas", ["curso_id"], :name => "index_turmas_on_curso_id"

end
