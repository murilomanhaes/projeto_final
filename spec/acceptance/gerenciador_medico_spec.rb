#encoding: utf-8

require "spec_helper" # chamar o arquivo spec_helper

feature "gerenciar medico" do
 	scenario "inclusao" do

 	      FactoryGirl.create :posto, nome: "Posto1"

 	   visit new_medico_path

        fill_in "Nome", with: "Murilo Alves Manhães"
        fill_in "CRM", with: "123"
        fill_in "Data Nascimento", with: "26/10/1990"
        select "Masculino", from: "Sexo"
        select "Solteiro", from: "Estado civil"
        fill_in "Naturalidade", with: "Brasileira"
        fill_in "Grau Instrução", with: "Superior Incompleto"

        fill_in "Telefone", with: "2725-8754"
        fill_in "Endereço", with: "Rua São Lino Nº 93"
        fill_in "Complemento", with: "Altos"
        fill_in "Bairro", with: "IPS"
        fill_in "CEP", with: "28026-090"
        fill_in "Cidade", with: "Campos dos Goytacazes"

        select "Posto1", from: "Posto"



        click_button "Salvar"

        page.should have_content "Medico cadastrado com sucesso"
        page.should have_content "Nome: Murilo Alves Manhães"
        page.should have_content "CRM: 123"
        page.should have_content "Data Nascimento: 26/10/1990"
        page.should have_content "Sexo: Masculino"
        page.should have_content "Estado civil: Solteiro"
        page.should have_content "Naturalidade: Brasileira"
        page.should have_content "Grau Instrução: Superior Incompleto"

        page.should have_content "Telefone: 2725-8754"
        page.should have_content "Endereço: Rua São Lino Nº 93"
        page.should have_content "Complemento: Altos"
        page.should have_content "Bairro: IPS"
        page.should have_content "CEP: 28026-090"
        page.should have_content "Cidade: Campos dos Goytacazes"
        page.should have_content "Posto: Posto1"



  end
end
