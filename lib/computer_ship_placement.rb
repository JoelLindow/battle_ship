require './lib/game'
require 'pry'
class ComputerShipPlacement

  # def self.ship_start_point(computer_board)
  #   computer_board.data[rand(0..3)][rand(0..3)] = " B "
  # end

  def boat_direction
    rand(0..1)
  end

  def place_boats
    if boat_direction == 0
      horizontal_boat
    else 
      vertical_boat
    end
  end

  def horizontal_boat
    puts "horizontal_boat"
  end

  def vertical_boat
    puts "vertical_boat"
  end

end

binding.pry
""
