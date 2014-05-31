class Agency < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
	belongs_to :address
	accepts_nested_attributes_for :address

  has_many :clients
  has_many :updates
  has_many :volunteers
  has_many :agent_services
  has_many :services, :through => :agent_services
  has_many :managements
  has_many :users, :through => :managements

	validates_presence_of :name,
												:hours_of_operation,
												:contact_name,
												:contact_phone,
												:contact_email

	SERVICES_PANTRY       = 1
  SERVICES_FEEDING      = 2
  SERVICES_COUNSELING   = 3

  def self.all_agencies
    states = ""
    self.all.each do |l|
      states += "&markers=color:0x4DBD90%7Clabel:#{l.address.city[0]}%7C#{l.address.latitude},#{l.address.longitude}"
    end
    states

    map = "http://maps.googleapis.com/maps/api/staticmap?center=atlanta,GA&zoom=8&scale=4&size=1000x800&maptype=roadmap#{states}&sensor=false&style=feature:landscape%7Celement:geometry.fill%7Ccolor:0xffffff%7Cvisibility:on&style=feature:water%7Celement:geometry.fill%7Ccolor:0xE6E6E6%7Cvisibility:on"
  end

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
