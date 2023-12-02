class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :modelo
      t.string :marca
      t.integer :ano
      t.text :description
      t.string :placa
      t.belongs_to :servico, foreign_key: true
      t.timestamps
    end
  end
end
