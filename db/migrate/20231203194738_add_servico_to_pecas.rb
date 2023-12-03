class AddServicoToPecas < ActiveRecord::Migration[7.1]
  def change
    add_reference :pecas, :servico, foreign_key: true
  end
end
