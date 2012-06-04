class Medico < ActiveRecord::Base

belongs_to :posto

validates :nome, :crm, :data_nascimento, :sexo, :estado_civil, :naturalidade,
  :grau_instrucao, :telefone, :endereco, :bairro,  :cep, :cidade, :posto, presence: true

end
