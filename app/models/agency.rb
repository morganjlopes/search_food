class Agency < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
	belongs_to :address
	accepts_nested_attributes_for :address
	
	def should_generate_new_friendly_id?
    new_record?
  end
end
