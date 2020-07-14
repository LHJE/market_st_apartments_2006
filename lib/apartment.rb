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
    @renter = []
  end

  def number
    @number = unit_info[:number]
  end

  def monthly_rent
    @monthly_rent = unit_info[:monthly_rent]
  end

  def bathrooms
    @bathrooms = unit_info[:bathrooms]
  end

  def bedrooms
    @bedrooms = unit_info[:bedrooms]
  end

  def add_renter(renter_name)
    @renter << renter_name
  end


end
