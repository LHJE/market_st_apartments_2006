require './lib/renter'
require './lib/apartment'

class Building

  attr_reader :units,
              :building



  def initialize
    @units = []
  end


  def add_unit(unit)
    @units << unit
  end

  def units
    @units
  end


# I get that this this is somehow supposed to access the first object in the units array, but I just can't figure out how.     @building.units.????.renter?
# It's either that or something like what I've got below, but it keeps saying it doesn't recognize 'units' or 'name'

  # def renters
  #   units.each do |tenet|
  #     tenet.renter[0]
  #   end
  #   #gah.  Why is this just giving me exactly what .units is giving me?
  # end


  def renters
    units.map do |tenet|
      tenet.shift  #it's telling me `.shift` and `.first` aren't methods and that has me more baffled than ever before.
    end
  end
end
