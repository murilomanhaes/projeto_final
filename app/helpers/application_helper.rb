module ApplicationHelper
  def opcoes_para_data
    { size: 10, maxlength: 10 }
  end

  def opcoes_para_cpf
    { size: 14, maxlength: 14 }
  end

  def opcoes_para_telefone
    { size: 14, maxlength: 14 }
  end

  def opcoes_para_cep
    { size: 9, maxlength: 9 }
  end


end
