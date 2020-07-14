require './lib/renter'
require './lib/apartment'

class Building

  attr_reader :units,
              :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :unit_info,
              :renter,
              :name



  def initialize
    @units = []
  end


  def add_unit(unit)
    @units << unit
  end


  def renters
    building.units.each do |tenet|
      tenets += tenet[0]
    end
    tenets

  end
end
