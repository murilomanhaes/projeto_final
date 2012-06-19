class Paciente < ActiveRecord::Base

                              validates :nome, :cpf, :rg, :cartao_sus, :sexo, :data_nascimento, :estado_civil,
          :cor, :naturalidade, :grau_instrucao, :email, :telefone, :endereco,
          :bairro, :cidade, :estado, :cep, presence: true

  validates :email, format:/^.+\@.+\..+$/

  usar_como_cpf :cpf
end
