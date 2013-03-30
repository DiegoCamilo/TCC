class CreateDiretors < ActiveRecord::Migration
  def change
    create_table :diretors do |t|
      t.references :pessoa

      t.timestamps
    end
    add_index :diretors, :pessoa_id
  end
end
