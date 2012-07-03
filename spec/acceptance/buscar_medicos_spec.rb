require 'spec_helper'

feature 'buscar medicos' do

before(:each) { login }

  scenario 'por nome' do

    FactoryGirl.create(:medico, nome: 'murilo')
    FactoryGirl.create(:medico, nome: 'paulo Cesar')
    visit medicos_path
    fill_in 'Busca por nome', with: 'murilo'
    click_button 'Buscar'
    page.should have_content 'murilo'
    page.should_not have_content 'paulo Cesar'
  end
end
