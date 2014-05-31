class Service < ActiveRecord::Base
	has_many :agent_services
  has_many :agencies, :through => :agent_services

  validates_presence_of :name,	
  											:description
end
