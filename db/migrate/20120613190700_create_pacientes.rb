class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :cartao_sus
      t.string :data_nascimento
      t.string :sexo
      t.string :estado_civil
      t.string :cor
      t.string :naturalidade
      t.string :grau_instrucao
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :profissao
      t.text :observacao

      t.timestamps
    end
  end
end
