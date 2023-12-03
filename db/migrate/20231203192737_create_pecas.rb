class CreatePecas < ActiveRecord::Migration[7.1]
  def change
    create_table :pecas do |t|
      t.string :name
      t.integer :quantidade
      t.float :valor

      t.timestamps
    end
  end
end
