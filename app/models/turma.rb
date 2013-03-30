class Turma < ActiveRecord::Base
  belongs_to :curso
  attr_accessible :nome, :periodo_turma, :turno
end
