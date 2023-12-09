class CreateOrdemServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :ordem_servicos do |t|
      t.references :car, null: false, foreign_key: true
      t.references :servico, null: false, foreign_key: true
      t.references :peca, null: false, foreign_key: true
      t.references :equipe, null: false, foreign_key: true
      t.datetime :data_hora
      t.text :descricao

      t.timestamps
    end
  end
end
