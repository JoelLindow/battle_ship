require 'pry'
class ComputerShipPlacement
  attr_accessor :computer_board, :boat_2_long_positions, :boat_3_long_positions

  def initialize
    @computer_board = [
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "],
                        [" . ", " . ", " . ", " . "]
                      ]
    @boat_2_long_positions = []
    @boat_3_long_positions = []
  end

  def add_boats
    first_boat_placement
    second_boat_placement
  end

  def first_boat_placement
    direction_boat_1 = boat_direction
      if direction_boat_1 == 0
        boat_1_start_row = rand(0..3)
        boat_1_start_index = rand(0..2)
        if horizontal_two_long_boat_conditions(boat_1_start_row, boat_1_start_index) == true
          horizontal_two_long_boat_placement(boat_1_start_row, boat_1_start_index)
        else
          first_boat_placement
        end
      elsif direction_boat_1 == 1
        boat_1_start_row = rand(0..2)
        boat_1_start_index = rand(0..3)
        if vertical_two_long_boat_conditions(boat_1_start_row, boat_1_start_index) == true
          vertical_two_long_boat_placement(boat_1_start_row, boat_1_start_index)
        else
          first_boat_placement
        end
      end
  end

  def second_boat_placement
    direction_boat_2 = boat_direction
    if direction_boat_2 == 0     #0 is horizontal
      boat_2_start_row = rand(0..3)
      boat_2_start_index = rand(0..1)
      if horizontal_three_long_boat_conditions(boat_2_start_row, boat_2_start_index) == true
        horizontal_three_long_boat_placement(boat_2_start_row, boat_2_start_index)
      else
        second_boat_placement
      end
    elsif direction_boat_2 == 1   #1 is vertical
      boat_2_start_row = rand(0..1)
      boat_2_start_index = rand(0..3)
      if vertical_three_long_boat_conditions(boat_2_start_row, boat_2_start_index) == true
        vertical_three_long_boat_placement(boat_2_start_row, boat_2_start_index)
      else
        second_boat_placement
      end
    end
  end

  def boat_direction
    rand(0..1)
  end

  def horizontal_two_long_boat_conditions(boat_1_start_row, boat_1_start_index)
    (@computer_board[boat_1_start_row][boat_1_start_index] == " . " &&
       @computer_board[boat_1_start_row][boat_1_start_index + 1] == " . ")
  end

  def horizontal_two_long_boat_placement(boat_1_start_row, boat_1_start_index)
    @computer_board[boat_1_start_row][boat_1_start_index] = " B "
    @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
    @computer_board[boat_1_start_row][boat_1_start_index + 1] = " B "
    @boat_2_long_positions << [boat_1_start_row, boat_1_start_index + 1]
  end

  def vertical_two_long_boat_conditions(boat_1_start_row, boat_1_start_index)
    (@computer_board[boat_1_start_row][boat_1_start_index] == " . " &&
       @computer_board[boat_1_start_row + 1][boat_1_start_index] == " . ")
  end

  def vertical_two_long_boat_placement(boat_1_start_row, boat_1_start_index)
    @computer_board[boat_1_start_row][boat_1_start_index] = " B "
    @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
    @computer_board[boat_1_start_row + 1][boat_1_start_index] = " B "
    @boat_2_long_positions << [boat_1_start_row + 1, boat_1_start_index]
  end

  def horizontal_three_long_boat_conditions(boat_2_start_row, boat_2_start_index)
    (@computer_board[boat_2_start_row][boat_2_start_index] == " . " &&
     @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . " &&
     @computer_board[boat_2_start_row][boat_2_start_index + 2] == " . ")
  end

  def horizontal_three_long_boat_placement(boat_2_start_row, boat_2_start_index)
    @computer_board[boat_2_start_row][boat_2_start_index] = " B "
    @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
    @computer_board[boat_2_start_row][boat_2_start_index + 2] = " B "
    @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
    @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 1]
    @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 2]
  end

  def vertical_three_long_boat_conditions(boat_2_start_row, boat_2_start_index)
    (@computer_board[boat_2_start_row][boat_2_start_index] == " . " &&
     @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . " &&
     @computer_board[boat_2_start_row + 2][boat_2_start_index] == " . ")
  end

  def vertical_three_long_boat_placement(boat_2_start_row, boat_2_start_index)
    @computer_board[boat_2_start_row][boat_2_start_index] = " B "
    @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
    @computer_board[boat_2_start_row + 2][boat_2_start_index] = " B "
    @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
    @boat_3_long_positions << [boat_2_start_row + 1, boat_2_start_index]
    @boat_3_long_positions << [boat_2_start_row + 2, boat_2_start_index]
  end
end
