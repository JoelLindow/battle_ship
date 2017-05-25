require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_ship_placement'
require 'rake/testtask'
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

  def test_two_space_long_boat_can_place_with_no_collisions
    placement = ComputerShipPlacement.new
    placement.first_boat_placement

    assert_equal 2, placement.computer_board.flatten.count(" B ")
  end

  def test_the_two_spot_long_boat_knows_there_it_is
    placement = ComputerShipPlacement.new
    placement.first_boat_placement
    boat_row = placement.boat_2_long_positions[0][0]
    boat_index = placement.boat_2_long_positions[0][1]
    boat_placed = placement.computer_board[boat_row][boat_index]

    assert_equal " B ", boat_placed

    boat_row_two = placement.boat_2_long_positions[1][0]
    boat_index_two = placement.boat_2_long_positions[1][1]
    boat_placed_two = placement.computer_board[boat_row][boat_index]

    assert_equal " B ", boat_placed_two
  end

  def test_three_space_long_boat_can_place_with_no_collisions
    placement = ComputerShipPlacement.new
    placement.second_boat_placement

    assert_equal 3, placement.computer_board.flatten.count(" B ")
  end

  def test_the_three_spot_long_boat_knows_there_it_is
    placement = ComputerShipPlacement.new
    placement.second_boat_placement
    boat_row = placement.boat_3_long_positions[0][0]
    boat_index = placement.boat_3_long_positions[0][1]
    boat_placed = placement.computer_board[boat_row][boat_index]

    assert_equal " B ", boat_placed

    boat_row_two = placement.boat_3_long_positions[1][0]
    boat_index_two = placement.boat_3_long_positions[1][1]
    boat_placed_two = placement.computer_board[boat_row][boat_index]

    assert_equal " B ", boat_placed_two

    boat_row_two = placement.boat_3_long_positions[2][0]
    boat_index_two = placement.boat_3_long_positions[2][1]
    boat_placed_three = placement.computer_board[boat_row][boat_index]

    assert_equal " B ", boat_placed_three
  end

  def test_it_places_5_boat_positions_on_the_board_with_no_collision
    placement = ComputerShipPlacement.new
    placement.add_boats

    boat_1 = placement.boat_2_long_positions.count
    boat_2 = placement.boat_3_long_positions.count
    total_boat_spots = boat_1 + boat_2

    assert_equal 5, total_boat_spots
  end
end
