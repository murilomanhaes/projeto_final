#encoding: utf-8

require "spec_helper" # chamar o arquivo spec_helper

feature "gerenciar posto" do
 	scenario "inclusao" do
 	   visit new_posto_path

        fill_in "Nome", with: "Posto São Francisco"
        fill_in "Endereço", with: "Rua A Nº 100"
        fill_in "Complemento", with: "Fundos"
        fill_in "Bairro", with: "Centro"
        fill_in "CEP", with: "28026-090"
        fill_in "Cidade", with: "São Francisco Itabapoana"
        fill_in "Telefone", with: "2722-2222"
        click_button "Salvar"

        page.should have_content "Posto de Saude cadastrado com sucesso"
        page.should have_content "Nome: Posto São Francisco"
        page.should have_content "Endereço: Rua A Nº 100"
        page.should have_content "Complemento: Fundos"
        page.should have_content "Bairro: Centro"
        page.should have_content "CEP: 28026-090"
        page.should have_content "Cidade: São Francisco Itabapoana"
        page.should have_content "Telefone: 2722-2222"

  end
end
