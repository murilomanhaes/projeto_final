class CreatePostos < ActiveRecord::Migration
  def change
    create_table :postos do |t|
      t.string :nome
      t.string :endereco
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.string :telefone

      t.timestamps
    end
  end
end
