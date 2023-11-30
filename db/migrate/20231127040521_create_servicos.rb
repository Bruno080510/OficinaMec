class CreateServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :servicos do |t|
      t.string :tipoDeServico

      t.timestamps
    end
  end
end
