class Horario < ActiveRecord::Base
  belongs_to :professor
  attr_accessible :dia_semana, :horario1, :horario2, :horario3, :horario4, :horario5, :horario6
end
