class AddOficinaIdToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :oficina_id, :integer
  end
end
