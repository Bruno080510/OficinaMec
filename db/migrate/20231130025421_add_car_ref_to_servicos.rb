class AddCarRefToServicos < ActiveRecord::Migration[7.1]
  def change
    add_reference :servicos, :car, foreign_key: true
  end
end
