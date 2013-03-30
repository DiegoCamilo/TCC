class Coordenador < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :curso
  # attr_accessible :title, :body
end
