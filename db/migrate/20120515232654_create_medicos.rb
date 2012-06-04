class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nome
      t.string :crm
      t.date :data_nascimento
      t.string :sexo
      t.string :estado_civil
      t.string :naturalidade
      t.string :grau_instrucao
      t.string :telefone
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade

      t.timestamps
    end
  end
end
