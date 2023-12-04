class AddEquipeIdToFuncionarios < ActiveRecord::Migration[7.1]
  def change
    add_reference :funcionarios, :equipe, foreign_key: true
  end
end
