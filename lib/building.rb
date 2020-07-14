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
              :name,
              :building



  def initialize
    @units = []
    @unit_total = []
  end


  def add_unit(unit)
    @units << unit
  end


  def renters
    @building.units.each do |tenet|
      tenet.name
    end
  end
end
