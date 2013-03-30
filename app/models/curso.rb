class Curso < ActiveRecord::Base
  attr_accessible :nome
  has_one :coordenador
  has_many :mapeamentos
  
end
