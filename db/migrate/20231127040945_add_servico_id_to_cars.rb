class AddServicoIdToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :servico_id, :integer
  end
end
