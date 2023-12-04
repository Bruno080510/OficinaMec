class AddEquipeIdtoMecanicos < ActiveRecord::Migration[7.1]
  def change
    add_reference :mecanicos, :equipe, foreign_key: true
  end
end
