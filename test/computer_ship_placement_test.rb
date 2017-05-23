require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_ship_placement'
require 'pry'

class ComputerShipPlacementTest < Minitest::Test

  def test_it_exists
    placement = ComputerShipPlacement.new

    assert_instance_of ComputerShipPlacement, placement
  end

  def test_it_can_generate_random_number_for_boat_direction
    placement = ComputerShipPlacement.new

    expected = (0..1).to_a
    assert expected.include?(placement.boat_direction)
  end

  def test_it_can_place_first_boat_with_2_spots_on_board
    placement = ComputerShipPlacement.new
    placement.first_boat_placement

    assert_equal 2, placement.boat_2_long_positions.count
  end

  def test_it_can_place_first_boat_with_3_spots_on_board
    placement = ComputerShipPlacement.new
    placement.second_boat_placement

    assert_equal 3, placement.boat_3_long_positions.count
  end

  def test_it_places_5_boat_positions_on_the_board
    placement = ComputerShipPlacement.new
    placement.add_boats

    boat_1 = placement.boat_2_long_positions.count
    boat_2 = placement.boat_3_long_positions.count
    total_boat_spots = boat_1 + boat_2

    assert_equal 5, total_boat_spots
  end
end
