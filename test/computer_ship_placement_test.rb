require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_ship_placement'
require 'pry'

class ComputerShipPlacementTest < Minitest::Test

  def test_it_exists
    placement = ComputerShipPlacement.new

    assert_instance_of ComputerShipPlacement, placement
  end

  
end
