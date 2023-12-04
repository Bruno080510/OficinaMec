class CreateFuncionarios < ActiveRecord::Migration[7.1]
  def change
    create_table :funcionarios do |t|
      t.string :name
      t.string :endereco
      t.integer :phone

      t.timestamps
    end
  end
end
