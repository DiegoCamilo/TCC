class Professor < ActiveRecord::Base
  belongs_to :pessoa
  has_one :horario
  has_one :mapeamento
  
  has_and_belongs_to_many :disciplina, :join_table => "preferencia_professors"
  # attr_accessible :title, :body
end
