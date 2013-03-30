class Diretor < ActiveRecord::Base
  belongs_to :pessoa
  # attr_accessible :title, :body
end
