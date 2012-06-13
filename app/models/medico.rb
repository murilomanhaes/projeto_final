class Medico < ActiveRecord::Base

belongs_to :posto
belongs_to :especialidade

validates :nome, :crm, :data_nascimento, :sexo, :estado_civil, :naturalidade,
  :grau_instrucao, :telefone, :endereco, :bairro,  :cep, :cidade, :posto,
  :especialidade, presence: true

end
