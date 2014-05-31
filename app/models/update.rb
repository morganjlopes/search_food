class Update < ActiveRecord::Base
	belongs_to :agency
	belongs_to :user

	validates_presence_of :content
end
