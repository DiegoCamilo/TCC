class PreferenciaProfessors < ActiveRecord::Migration
  def change
    create_table :preferencia_professors do |t|
      t.references :professor
      t.references :disciplina

      t.timestamps
    end
    add_index :preferencia_professors, :professor_id
    add_index :preferencia_professors, :disciplina_id
  end
end
