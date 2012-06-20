require 'spec_helper'

feature 'buscar postos' do
  scenario 'por nome' do
    FactoryGirl.create(:posto, nome: 'posto 1')
    FactoryGirl.create(:posto, nome: 'outro posto')
    visit postos_path
    fill_in 'Busca por nome', with: 'outro'
    click_button 'Buscar'
    page.should have_content 'outro posto'
    page.should_not have_content 'posto 1'
  end
end
