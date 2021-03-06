class Pessoa < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_one :professor
  has_one :diretor
  has_one :coordenador

  attr_accessible :nome
  
  validates_presence_of :email
  validates_presence_of :nome
  
end
 
