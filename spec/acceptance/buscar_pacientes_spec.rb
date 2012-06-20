require 'spec_helper'

feature 'buscar pacientes' do

  scenario 'por nome' do
    FactoryGirl.create(:paciente, nome: 'murilo')
    FactoryGirl.create(:paciente, nome: 'mauricio')

    visit pacientes_path
    fill_in 'Busca por nome', with: 'murilo'
    click_button 'Buscar'
    page.should have_content 'murilo'
    page.should_not have_content 'mauricio'
  end

end
