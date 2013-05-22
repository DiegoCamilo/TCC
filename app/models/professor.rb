class Professor < ActiveRecord::Base
  belongs_to :pessoa
  has_many :horarios
  has_many :mapeamentos
  
  has_and_belongs_to_many :disciplina, :join_table => "preferencia_professors"
  # attr_accessible :title, :body
  #parei aqui disciplina de professores = professor.disciplinas? professor#disciplinas editususarioregister
end
