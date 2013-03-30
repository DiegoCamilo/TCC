class CreateCoordenadors < ActiveRecord::Migration
  def change
    create_table :coordenadors do |t|
      t.references :pessoa
      t.references :curso

      t.timestamps
    end
    add_index :coordenadors, :pessoa_id
    add_index :coordenadors, :curso_id
  end
end
