class Agency < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
	belongs_to :address
	accepts_nested_attributes_for :address

  has_many :volunteers

  has_many :agent_services
  has_many :services, :through => :agent_services

	validates_presence_of :name,
												:hours_of_operation,
												:contact_name,
												:contact_phone,
												:contact_email

	SERVICES_PANTRY       = 1
  SERVICES_FEEDING      = 2
  SERVICES_COUNSELING   = 3

	def self.services
    {
      SERVICES_PANTRY     => 'Food Pantry',
      SERVICES_FEEDING    => 'Feeding',
      SERVICES_COUNSELING => 'Counseling'
    }
  end

  def services_to_s
    case size
      when SERVICES_PANTRY
        "Food Pantry"
      when SERVICES_FEEDING
        "Feeding"
      when SERVICES_COUNSELING
        "Counseling"
    end
  end
	
	def should_generate_new_friendly_id?
    new_record?
  end
end
