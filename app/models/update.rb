class Update < ActiveRecord::Base
	belongs_to :agency

	validates_presence_of :content
end
