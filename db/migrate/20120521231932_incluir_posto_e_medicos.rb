class IncluirPostoEMedicos < ActiveRecord::Migration
  def up
    add_column :medicos, :posto_id, :integer
  end

  def down
    remove_column :medicos, :posto_id
  end
end
