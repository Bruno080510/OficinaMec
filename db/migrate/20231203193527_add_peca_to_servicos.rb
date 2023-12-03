class AddPecaToServicos < ActiveRecord::Migration[7.1]
  def change
    add_reference :servicos, :peca, foreign_key: true
  end
end
