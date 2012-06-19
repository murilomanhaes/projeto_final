class IncluirEspecialidadeEmMedicos < ActiveRecord::Migration
  def up
    add_column :medicos, :especialidade_id, :integer
  end

  def down
    remove_column :medicos, :especialidade_id
  end
end
