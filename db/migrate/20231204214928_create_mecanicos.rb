class CreateMecanicos < ActiveRecord::Migration[7.1]
  def change
    create_table :mecanicos do |t|
      t.string :nome
      t.string :endereco
      t.integer :phone

      t.timestamps
    end
  end
end
