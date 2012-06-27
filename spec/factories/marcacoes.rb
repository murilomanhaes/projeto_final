# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :marcacao do
    paciente_id "MyString"
    medico_id 1
    data_consulta "2012-06-26"
    hora "MyString"
    tipo "MyString"
    problema "MyText"
    conclusao "MyString"
    data_conclusao "2012-06-26"
  end
end
