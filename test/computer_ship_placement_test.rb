require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_ship_placement'
require 'pry'

class ComputerShipPlacementTest < Minitest::Test

  def test_it_exists
    placement = ComputerShipPlacement.new

    assert_instance_of ComputerShipPlacement, placement
  end

  
  # def test_it_can_choose_random_number_to_pick_boat_direction
  #   game = Game.new
  # end


  # def test_it_can_modify_a_random_cell_on_computer_game_board_for_ship_placement_start
  #   game = Game.new
  #
  #   refute game.computer_board.data.flatten.include?(" B ")
  #
  #   ComputerShipPlacement.ship_start_point(game.computer_board)
  #
  #   assert game.computer_board.data.flatten.include?(" B ")
  # end
end
