# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exame do
    paciente_id "MyString"
    medico_id 1
    data "2012-07-02"
    hora "MyString"
    tipo "MyString"
    conclusao "MyString"
    data_conclusao "2012-07-02"
  end
end
