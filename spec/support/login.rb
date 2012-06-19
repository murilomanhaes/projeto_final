 def login

    FactoryGirl.create :funcionario, nome: "Murilo"

 	  visit new_funcionario_session_path
 	      fill_in 'E-mail', with: 'murilo_manhaes@hotmail.com'
 	      fill_in 'Senha', with: '123'
 	      click_button 'Entrar'
 end
