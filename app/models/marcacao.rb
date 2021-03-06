class Marcacao < ActiveRecord::Base
  belongs_to :paciente
  belongs_to :medico

      validates :paciente, :medico, :data, :hora, :tipo, :problema, presence: true


    def concluido?
    		data_conclusao.present?
  	end

end
