#encoding: utf-8

require "spec_helper" # chamar o arquivo spec_helper

feature "gerenciar Pacientes" do

before(:each) { login }

 	scenario "inclusao" do

 	   visit new_paciente_path
        fill_in "Nome", with: "Murilo Alves Manhães"
        fill_in "CPF", with: "123.456.789-09"
        fill_in "RG", with: "1234567889765"
        fill_in "Cartão SUS", with: "123452343433"
        fill_in "Data Nascimento", with: "26/10/1990"
        select "Masculino", from: "Sexo"
        select "Solteiro", from: "Estado civil"
        select "Negro", from: "Cor"
        fill_in "Naturalidade", with: "Brasileira"
        fill_in "Grau Instrução", with: "Superior Incompleto"

        fill_in "E-mail", with: "murilomanhaes22@gmail.com"
        fill_in "Telefone", with: "(22) 2725-8754"
        fill_in "Endereço", with: "Rua São Lino Nº 93"
        fill_in "Complemento", with: "Altos"
        fill_in "Bairro", with: "IPS"
        fill_in "Cidade", with: "Campos dos Goytacazes"
        select "Rio de Janeiro", from: "Estado*"
        fill_in "CEP", with: "28026-090"

        fill_in "Profissão", with: "Vendedor"
        fill_in "Observação", with: "alergico a dipirona"

        click_button "Salvar"

        page.should have_content "Paciente cadastrado com sucesso"
        page.should have_content "Nome: Murilo Alves Manhães"
        page.should have_content "CPF: 123.456.789-09"
        page.should have_content "RG: 1234567889765"
        page.should have_content "Cartão SUS: 123452343433"
        page.should have_content "Data Nascimento: 26/10/1990"
        page.should have_content "Sexo: Masculino"
        page.should have_content "Estado civil: Solteiro"
        page.should have_content "Cor: Negro"
        page.should have_content "Naturalidade: Brasileira"
        page.should have_content "Grau Instrução: Superior Incompleto"

        page.should have_content "E-mail: murilomanhaes22@gmail.com"
        page.should have_content "Telefone: (22) 2725-8754"
        page.should have_content "Endereço: Rua São Lino Nº 93"
        page.should have_content "Complemento: Altos"
        page.should have_content "Bairro: IPS"
        page.should have_content "Cidade: Campos dos Goytacazes"
        page.should have_content "Estado: Rio de Janeiro"
        page.should have_content "CEP: 28026-090"

        page.should have_content "Profissão: Vendedor"
        page.should have_content "Observação: alergico a dipirona"

  end
end
