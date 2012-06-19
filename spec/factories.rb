FactoryGirl.define do
  factory :posto do

    nome "posto1"
    endereco "Rua 1"
    complemento "Altos"
    bairro "Centro"
    cep "28026-090"
    cidade "Campos dos Goytacazes"
    telefone "(22) 2722-2222"

  end

  factory :funcionario do

    nome "Murilo"
    cpf "123.456.789-09"
    rg "1234567890"
    sexo "masculino"
    data_nascimento "26/10/1990"
    estado_civil "solteiro"
    cor "Negro"
    naturalidade "Rio de Janeiro"
    grau_instrucao "Superior Incompleto"

    email "murilo_manhaes@hotmail.com"
    telefone "(22) 2725-8754"
    endereco "Rua sao lino 93"
    complemento "altos"
    bairro "IPS"
    cidade "Campos dos Goytacazes"
    estado "Rio de janeiro"
    cep "28026-090"

    password "123"
    password_confirmation "123"

    posto
  end
end
