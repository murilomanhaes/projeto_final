class Funcionario < ActiveRecord::Base

belongs_to :posto

 devise :database_authenticatable, :registerable, :lockable, :timeoutable,
        :recoverable, :trackable

    validates :nome, :cpf, :rg, :sexo, :data_nascimento, :estado_civil, :cor, :naturalidade,
  :grau_instrucao, :email, :telefone, :endereco, :bairro, :cidade, :estado, :cep,
   :password, :password_confirmation, :posto, presence: true

  validates :email, format:/^.+\@.+\..+$/

  usar_como_cpf :cpf

  validates :email, :cpf, uniqueness:true
end
