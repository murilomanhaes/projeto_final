require 'spec_helper'

feature 'buscar funcionarios' do

 before(:each) { login }

  scenario 'por nome' do

    FactoryGirl.create(:funcionario, nome: 'murilo', cpf: '139.884.947-20', email: 'murilo@hotmail.com')

    FactoryGirl.create(:funcionario, nome: 'paulo Cesar', cpf: '491.122.534-30', email: 'paulo@hotmail.com')

    visit funcionarios_path
    fill_in 'Busca por nome', with: 'murilo'
    click_button 'Buscar'
    page.should have_content 'murilo'
    page.should_not have_content 'paulo Cesar'
  end
end
