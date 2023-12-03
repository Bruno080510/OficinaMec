class AddValorToServicos < ActiveRecord::Migration[7.1]
  def change
    add_column :servicos, :valor, :float
  end
end
