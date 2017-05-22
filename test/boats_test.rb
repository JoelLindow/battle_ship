require 'minitest/autorun'
require 'minitest/pride'
require './lib/boats'

class BoatsTest < Minitest::Test

  def test_it_exists
    boats = Boats.new

    assert_instance_of Boats, boats
  end

  def test_2_long_boat_exist_with_proper_data
    boats = Boats.new

    assert_equal [" B ", " B "], boats.boat_2_long
  end

  def test_3_long_boat_exist_with_proper_data
    boats = Boats.new

    assert_equal [" B ", " B ", " B "], boats.boat_3_long
  end

  def test_two_long_boat_data_can_be_manipulated
    boats = Boats.new
    boats.boat_2_long[0] = " X "

    assert_equal [" X ", " B "], boats.boat_2_long
  end

  def test_three_long_boat_data_can_be_manipulated
    boats = Boats.new
    boats.boat_3_long[2] = " X "

    assert_equal [" B ", " B ", " X "], boats.boat_3_long
  end

end
