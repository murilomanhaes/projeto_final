class CreateMarcacoes < ActiveRecord::Migration
  def change
    create_table :marcacoes do |t|
      t.string :paciente_id
      t.integer :medico_id
      t.date :data
      t.string :hora
      t.string :tipo
      t.text :problema
      t.string :conclusao
      t.date :data_conclusao

      t.timestamps
    end
  end
end
