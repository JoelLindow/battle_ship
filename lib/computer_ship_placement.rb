require 'pry'
class ComputerShipPlacement
  attr_reader :computer_board

  def initialize
    @computer_board = [
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "]
                      ]
  end
  # def self.ship_start_point(computer_board)
  #   computer_board.data[rand(0..3)][rand(0..3)] = " B "
  # end
  def place_boats
    boat_lengths = [2, 3]
    until boat_lengths.empty?
      if boat_direction == 0
        horizontal_boat(boat_lengths[0])
      else
        vertical_boat(boat_lengths[0])
      end
      boat_lengths.shift!
    end
  end

#   def horizontal_boat(boat_length)
#     if boat_length == 2
#
#
#     puts "horizontal_boat"
#   end
#
#   def vertical_boat(boat_length)
#     puts "vertical_boat"
#   end
#

#   def two_boat
#     start_row = rand[0..3]
#     start_spot = rand(0..2)
#     data[start_row][start_spot] = " B "
#   end
#
#   def three_boat_start_index
#     rand(0..1)
#   end
#
#   def populated_computer_board #<--- game board calls this for computer game board
#     place_boats
#     computer_board
#   end
#
#   def empty_game_board
#     [
#       [" . ", " . ", " . ", " . "],
#       [" . ", " . ", " . ", " . "],
#       [" . ", " . ", " . ", " . "],
#       [" . ", " . ", " . ", " . "]
#     ]
#   end
#
#   def board_reference_horizontal
#     [
#       [[0, 0], [0, 1], [0, 2], [0, 3]],
#       [[1, 0], [1, 1], [1, 2], [1, 3]],
#       [[2, 0], [2, 1], [2, 2], [2, 3]],
#       [[3, 0], [3, 1], [3, 2], [3, 3]]
#     ]
#
#   end
#
#   def board_reference_vertical
#     [
#       [[3, 0], [2, 0], [1, 0], [0, 0]],
#       [[3, 1], [2, 1], [1, 1], [0, 1]],
#       [[3, 2], [2, 2], [1, 2], [0, 2]],
#       [[3, 3], [2, 3], [1, 3], [0, 3]]
#     ]
#   end
#
# end

  def add_boats
    start_row = rand(0..3)
    start_index = rand(0..2)
    start_location = computer_board[start_row][start_index]
    direction_boat_1 = boat_direction
    if start_location == " . "
      #0 is horizontal
      if direction_boat_1 == 0
        @computer_board[start_row][start_index] = " B "
        if @computer_board[start_row][start_index +  1] == " . "
        @computer_board[start_row][start_index + 1] = " B "
        else
          @computer_board[start_row][start_index - 1] = " B "
        end
        #1 is vertical
      elsif direction_boat_1 == 1
        @computer_board[start_row][start_index] = " B "
        if @computer_board[start_row + 1] == nil
          @computer_board[start_row - 1][start_index] = " B "
        elsif @computer_board[start_row + 1][start_index] == " . "
          @computer_board[start_row + 1][start_index] = " B "
        elsif @computer_board[start_row + 1][start_index] == nil
          @computer_board[start_row - 1][start_index] = " B "
        end
      end
    end
  end

  def boat_direction
    rand(0..1)
  end
#

end


csp = ComputerShipPlacement.new
csp.add_boats
csp.computer_board.each do |row|
  puts row.join
end
