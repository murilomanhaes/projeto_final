class IncluirTipoEmFuncionarios < ActiveRecord::Migration
  def up
    add_column :funcionarios, :tipo, :string
  end

  def down
    remove_column :funcionarios, :tipo
  end
end
