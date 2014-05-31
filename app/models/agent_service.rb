class AgentService < ActiveRecord::Base
	belongs_to :agency
	belongs_to :service
end
