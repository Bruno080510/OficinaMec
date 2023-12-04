class RemoveEquipeIdFromFuncionarios < ActiveRecord::Migration[7.1]
  def change
    remove_column :funcionarios, :equipe_id, :bigint
  end
end
