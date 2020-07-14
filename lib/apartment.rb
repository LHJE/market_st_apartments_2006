require './lib/renter'

class Apartment

  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :unit_info,
              :renter



  def initialize(unit_info, renter = [])
    @unit_info = unit_info
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renter = []
  end

  def add_renter(renter_name)
    @renter << renter_name
  end


end
