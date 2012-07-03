ProjetoFinal::Application.routes.draw do

  resources :exames, except: [:edit, :update, :destroy] do
    member do
		  get :concluir
		  put :salvar_conclusao
	  end
	  
	  collection do
      get :concluidas
      get :consultar_concluidas
      get :consultar_marcadas
    end
	  
  end
  
  resources :marcacoes, except: [:edit, :update, :destroy] do
		member do
		  get :concluir
		  put :salvar_conclusao
	  end

	  collection do
      get :concluidas
      get :consultar_concluidas
      get :consultar_marcadas
    end
	end

  resources :especialidades

  devise_for :funcionarios, controllers: { registrations: 'funcionarios' }

  resources :funcionarios do
    collection do
      get :informacoes
      get :consultar
    end
  end

  resources :pacientes do
    collection do
      get :informacoes
      get :consultar
    end
  end

  resources :postos do
    collection do
      get :informacoes
      get :consultar
    end
  end

  resources :medicos do
    collection do
      get :informacoes
      get :consultar
    end
  end

root to: "home#index"
 
end
