require './lib/renter'

class Apartment

  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms


# {number, monthly_rent, bathrooms, bedrooms}
  def initialize(unit_info)
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
  end
end