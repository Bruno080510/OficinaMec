class AddFuncionarioIdToEquipes < ActiveRecord::Migration[7.1]
  def change
    add_column :equipes, :funcionario_id, :bigint
    add_index :equipes, :funcionario_id
  end
end
