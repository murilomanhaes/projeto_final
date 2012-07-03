class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.string :paciente_id
      t.integer :medico_id
      t.date :data
      t.string :hora
      t.string :tipo
      t.string :conclusao
      t.date :data_conclusao

      t.timestamps
    end
  end
end
