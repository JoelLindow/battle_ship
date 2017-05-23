require 'pry'
class ComputerShipPlacement
  attr_accessor :computer_board, :boat_2_long_positions

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


  # def first_boat_placement
  #   start_row = rand(0..3)
  #   start_index = rand(0..2)
  #   start_location_boat_1 = computer_board[start_row][start_index]
  #   direction_boat_1 = boat_direction
  #   if start_location_boat_1 == " . "
  #     #0 is horizontal
  #     if direction_boat_1 == 0
  #       @computer_board[start_row][start_index] = " B "
  #       @boat_2_long_positions << [start_row, start_index]
  #       if @computer_board[start_row][start_index +  1] == " . "
  #         @computer_board[start_row][start_index + 1] = " B "
  #         @boat_2_long_positions << [start_row, start_index + 1]
  #       else
  #         @computer_board[start_row][start_index - 1] = " B "
  #         @boat_2_long_positions << [start_row, start_index - 1]
  #       end
  #       #1 is vertical
  #     elsif direction_boat_1 == 1
  #       @computer_board[start_row][start_index] = " B "
  #       @boat_2_long_positions << computer_board[start_row][start_index]
  #       if @computer_board[start_row + 1] == nil
  #         @computer_board[start_row - 1][start_index] = " B "
  #         @boat_2_long_positions << [start_row - 1, start_index]
  #       elsif @computer_board[start_row + 1][start_index] == " . "
  #         @computer_board[start_row + 1][start_index] = " B "
  #         @boat_2_long_positions << [start_row + 1, start_index]
  #       elsif @computer_board[start_row + 1][start_index] == nil
  #         @computer_board[start_row - 1][start_index] = " B "
  #         @boat_2_long_positions << [start_row - 1, start_index]
  #       end
  #     end
  #   end
  # end

  def first_boat_placement
    direction_boat_1 = boat_direction
      if direction_boat_1 == 0      #0 is horizontal
        boat_1_start_row = rand(0..3)
        boat_1_start_index = rand(0..2)
        if @computer_board[boat_1_start_row][boat_1_start_index] == " . " &&
           @computer_board[boat_1_start_row][boat_1_start_index + 1] == " . "
          @computer_board[boat_1_start_row][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
          @computer_board[boat_1_start_row][boat_1_start_index + 1] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index + 1]
        else
          first_boat_placement
        end
      elsif direction_boat_1 == 1     #1 is vertical
        boat_1_start_row = rand(0..2)
        boat_1_start_index = rand(0..3)
        if @computer_board[boat_1_start_row][boat_1_start_index] == " . " &&
           @computer_board[boat_1_start_row + 1][boat_1_start_index] == " . "
          @computer_board[boat_1_start_row][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
          @computer_board[boat_1_start_row + 1][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row + 1, boat_1_start_index]
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
      if @computer_board[boat_2_start_row][boat_2_start_index] == " . " &&
          @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . " &&
          @computer_board[boat_2_start_row][boat_2_start_index + 2] == " . "
        @computer_board[boat_2_start_row][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
        @computer_board[boat_2_start_row][boat_2_start_index + 2] = " B "
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 1]
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 2]
      else
        second_boat_placement
      end
    elsif direction_boat_2 == 1   #1 is vertical
      boat_2_start_row = rand(0..1)
      boat_2_start_index = rand(0..3)
      if @computer_board[boat_2_start_row][boat_2_start_index] == " . " &&
          @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . " &&
          @computer_board[boat_2_start_row + 2][boat_2_start_index] == " . "
        @computer_board[boat_2_start_row][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row + 2][boat_2_start_index] = " B "
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row + 1, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row + 2, boat_2_start_index]
      else
        second_boat_placement
      end
    end
  end

  def boat_direction
    rand(0..1)
  end
end


csp = ComputerShipPlacement.new
csp.add_boats
csp.computer_board.each do |row|
  puts row.join
end
# binding.pry
""
