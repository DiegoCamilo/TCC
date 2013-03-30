class CreateMapeamentos < ActiveRecord::Migration
  def change
    create_table :mapeamentos do |t|
      t.string :nome
      t.string :data_semestre
      t.references :curso
      t.references :turma
      t.references :disciplina
      t.references :professor

      t.timestamps
    end
    add_index :mapeamentos, :curso_id
    add_index :mapeamentos, :turma_id
    add_index :mapeamentos, :disciplina_id
    add_index :mapeamentos, :professor_id
  end
end
