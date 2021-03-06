require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'


class BuildingTest < Minitest::Test


  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_can_add_unit
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_add_renters_and_see_them
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    renter2 = Renter.new("Tim")

    building.add_unit(unit1)
    building.add_unit(unit2)
    unit1.add_renter(renter1)
    unit2.add_renter(renter2)
    require 'pry'; binding.pry
    assert_equal ["Aurora", "Tim"], building.renters
  end


end
