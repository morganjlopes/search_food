class Address < ActiveRecord::Base

  # Geocoode to grab lat and long
  geocoded_by :geo_address
  
  after_validation :geocode

  def geo_address
    "#{street_line_1} #{street_line_2} #{city}, #{state} #{zip}"
  end

  def to_s
    [
      street_line_1,
      street_line_2,
      "#{city}, #{state} #{zip}"
    ].reject(&:empty?).join("\n")
  end

  def map
    "https://maps.google.com/maps/api/staticmap?&zoom=10&scale=4&size=1170x300&sensor=false&zoom=12&markers=#{latitude}%2C#{longitude}"
  end
  
	def self.states
    [
      [ 'Alabama'             , 'AL' ],
      [ 'Alaska'              , 'AK' ],
      [ 'Arizona'             , 'AZ' ],
      [ 'Arkansas'            , 'AR' ],
      [ 'California'          , 'CA' ],
      [ 'Colorado'            , 'CO' ],
      [ 'Connecticut'         , 'CT' ],
      [ 'Delaware'            , 'DE' ],
      [ 'District of Columbia', 'DC' ],
      [ 'Florida'             , 'FL' ],
      [ 'Georgia'             , 'GA' ],
      [ 'Hawaii'              , 'HI' ],
      [ 'Idaho'               , 'ID' ],
      [ 'Illinois'            , 'IL' ],
      [ 'Indiana'             , 'IN' ],
      [ 'Iowa'                , 'IA' ],
      [ 'Kansas'              , 'KS' ],
      [ 'Kentucky'            , 'KY' ],
      [ 'Louisiana'           , 'LA' ],
      [ 'Maine'               , 'ME' ],
      [ 'Maryland'            , 'MD' ],
      [ 'Massachusetts'       , 'MA' ],
      [ 'Michigan'            , 'MI' ],
      [ 'Minnesota'           , 'MN' ],
      [ 'Mississippi'         , 'MS' ],
      [ 'Missouri'            , 'MO' ],
      [ 'Montana'             , 'MT' ],
      [ 'Nebraska'            , 'NE' ],
      [ 'Nevada'              , 'NV' ],
      [ 'New Hampshire'       , 'NH' ],
      [ 'New Jersey'          , 'NJ' ],
      [ 'New Mexico'          , 'NM' ],
      [ 'New York'            , 'NY' ],
      [ 'North Carolina'      , 'NC' ],
      [ 'North Dakota'        , 'ND' ],
      [ 'Ohio'                , 'OH' ],
      [ 'Oklahoma'            , 'OK' ],
      [ 'Oregon'              , 'OR' ],
      [ 'Pennsylvania'        , 'PA' ],
      [ 'Rhode Island'        , 'RI' ],
      [ 'South Carolina'      , 'SC' ],
      [ 'South Dakota'        , 'SD' ],
      [ 'Tennessee'           , 'TN' ],
      [ 'Texas'               , 'TX' ],
      [ 'Utah'                , 'UT' ],
      [ 'Vermont'             , 'VT' ],
      [ 'Virginia'            , 'VA' ],
      [ 'Washington'          , 'WA' ],
      [ 'West Virginia'       , 'WV' ],
      [ 'Wisconsin'           , 'WI' ],
      [ 'Wyoming'             , 'WY' ],
    ]
  end
end
