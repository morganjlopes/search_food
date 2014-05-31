class User < ActiveRecord::Base
	has_many :updates
	has_many :managements
  has_many :agencies, :through => :managements
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
