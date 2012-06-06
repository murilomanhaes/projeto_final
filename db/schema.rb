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

ActiveRecord::Schema.define(:version => 20120605233546) do

  create_table "especialidades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "sexo"
    t.date     "data_nascimento"
    t.string   "estado_civil"
    t.string   "cor"
    t.string   "naturalidade"
    t.string   "grau_instrucao"
    t.string   "email"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "login"
    t.string   "senha"
    t.integer  "posto_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "funcionarios", ["email"], :name => "index_funcionarios_on_email", :unique => true
  add_index "funcionarios", ["reset_password_token"], :name => "index_funcionarios_on_reset_password_token", :unique => true
  add_index "funcionarios", ["unlock_token"], :name => "index_funcionarios_on_unlock_token", :unique => true

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.string   "crm"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.string   "estado_civil"
    t.string   "naturalidade"
    t.string   "grau_instrucao"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "posto_id"
  end

  create_table "posto_de_saudes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "telefone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "postos", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "cidade"
    t.string   "telefone"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
