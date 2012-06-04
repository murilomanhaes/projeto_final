class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :sexo
      t.date :data_nascimento
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
      t.string :login
      t.string :senha
      t.integer :posto_id

      t.timestamps
    end
  end
end
