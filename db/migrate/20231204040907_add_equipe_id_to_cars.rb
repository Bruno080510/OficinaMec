class AddEquipeIdToCars < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :equipe, foreign_key: true
  end
end
