class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user
    if user.tipo == "Administrador"
		  can :manage, :all
	  else
	    can :show, :all
	    can :index, :all
	    
	    can [:create, :informacoes, :consultar], Paciente
	    can [:informacoes, :consultar], Medico
	    can [:informacoes, :consultar], Funcionario
	    can [:informacoes, :consultar], Posto
	    
	    can [:create, :concluir, :concluidas, :salvar_conclusao, :consultar_concluidas, 
	    :consultar_marcadas], Marcacao
	    
	    can [:create, :concluir, :concluidas, :salvar_conclusao, :consultar_concluidas, 
	    :consultar_marcadas], Exame
	  end    
  end
end
