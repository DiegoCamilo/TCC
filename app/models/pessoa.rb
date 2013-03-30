class Pessoa < ActiveRecord::Base
  has_one :professor
  has_one :diretor
  has_one :coordenador

  attr_accessible :nome
end
