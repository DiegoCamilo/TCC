class Disciplina < ActiveRecord::Base
  attr_accessible :nome
  has_and_belongs_to_many :professor, :join_table => "preferencia_professors"
  has_one :mapeamento
end
