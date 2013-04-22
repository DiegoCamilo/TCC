class Mapeamento < ActiveRecord::Base
  belongs_to :curso
  belongs_to :disciplina
  belongs_to :professor
  belongs_to :turma
  attr_accessible :data_semestre, :nome, :curso_id, :disciplina_id, :professor_id, :turma_id
end
