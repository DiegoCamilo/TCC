class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.references :curso
      t.string :periodo_turma
      t.string :turno
      t.string :nome

      t.timestamps
    end
    add_index :turmas, :curso_id
  end
end
