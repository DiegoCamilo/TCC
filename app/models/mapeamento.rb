class Mapeamento < ActiveRecord::Base
  belongs_to :curso
  belongs_to :disciplina
  belongs_to :professor
  attr_accessible :data_semestre, :periodo_turma, :turno
end
