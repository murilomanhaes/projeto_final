module ApplicationHelper

  def opcoes_para_data
    {size: 10, maxlength: 10, onkeypress: 'return mascaraData(this, event);'}
  end

  def opcoes_para_cpf
    { size: 14, maxlength: 14, onkeypress: 'return mascaraCPF(this, event);'}
  end

  def opcoes_para_telefone
    { size: 14, maxlength: 14, onkeypress: 'return mascaraTelefone(this, event);'}
  end

  def opcoes_para_cep
    { size: 9, maxlength: 9, onkeypress: 'return mascaraCEP(this, event);'}
  end

end
