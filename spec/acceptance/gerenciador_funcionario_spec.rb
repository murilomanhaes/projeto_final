#encoding: utf-8

require "spec_helper" # chamar o arquivo spec_helper

feature "gerenciar funcionario" do
 	scenario "inclusao" do

 	   FactoryGirl.create :posto, nome: "Posto1"

 	   visit new_funcionario_path

        fill_in "Nome", with: "Murilo Alves Manhães"
        fill_in "CPF", with: "123.456.789-09"
        fill_in "RG", with: "1234567889765"
        select "Masculino", from: "Sexo"
        fill_in "Data Nascimento", with: "26/10/1990"
        select "Solteiro", from: "Estado civil"
        select "Negro", from: "Cor"
        fill_in "Naturalidade", with: "Brasileira"
        fill_in "Grau Instrução", with: "Superior Incompleto"
        fill_in "E-mail", with: "murilo_manhaes@hotmail.com"
        fill_in "Telefone", with: "2725-8754"
        fill_in "Endereço", with: "Rua São Lino Nº 93"
        fill_in "Complemento", with: "Altos"
        fill_in "Bairro", with: "IPS"
        fill_in "Cidade", with: "Campos dos Goytacazes"
        select "Rio de Janeiro", from: "Estado*"
        fill_in "CEP", with: "28026-090"
        fill_in "Login", with: "murilomanhaes"
        fill_in "Senha", with: "123"

        select "Posto1", from: "Posto"


        click_button "Salvar"

        page.should have_content "Funcionario cadastrado com sucesso"
        page.should have_content "Nome: Murilo Alves Manhães"
        page.should have_content "CPF: 123.456.789-09"
        page.should have_content "RG: 1234567889765"
        page.should have_content "Sexo: Masculino"
        page.should have_content "Data Nascimento: 26/10/1990"
        page.should have_content "Estado civil: Solteiro"
        page.should have_content "Cor: Negro"
        page.should have_content "Naturalidade: Brasileira"
        page.should have_content "Grau Instrução: Superior Incompleto"
        page.should have_content "E-mail: murilo_manhaes@hotmail.com"
        page.should have_content "Telefone: 2725-8754"
        page.should have_content "Endereço: Rua São Lino Nº 93"
        page.should have_content "Complemento: Altos"
        page.should have_content "Bairro: IPS"
        page.should have_content "Cidade: Campos dos Goytacazes"
        page.should have_content "Estado: Rio de Janeiro"
        page.should have_content "CEP: 28026-090"
        page.should have_content "Login: murilomanhaes"
        page.should have_content "Senha: 123"

        page.should have_content "Posto: Posto1"

  end
end
