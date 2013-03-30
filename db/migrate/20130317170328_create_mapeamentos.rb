class CreateMapeamentos < ActiveRecord::Migration
  def change
    create_table :mapeamentos do |t|
      t.string :data_semestre
      t.references :curso
      t.references :disciplina
      t.references :professor
      t.string :periodo_turma
      t.string :turno

      t.timestamps
    end
    add_index :mapeamentos, :curso_id
    add_index :mapeamentos, :disciplina_id
    add_index :mapeamentos, :professor_id
  end
end
