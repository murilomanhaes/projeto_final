class Posto < ActiveRecord::Base
  validates :nome, :endereco, :bairro, :cep, :cidade, :telefone, presence: true
end
