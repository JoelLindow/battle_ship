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

  def add_boats
    start_row = rand(0..3)
    start_index = rand(0..2)
    start_location_boat_1 = computer_board[start_row][start_index]
    direction_boat_1 = boat_direction
    if start_location_boat_1 == " . "
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
    second_boat_placement

  end

  def second_boat_placement
    direction_boat_2 = boat_direction
    #0 is horizontal
    if direction_boat_2 == 0
      if @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index + 2] == " . "
        @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
        @computer_board[boat_2_start_row][boat_2_start_index + 2] = " B "
      elsif @computer_board[boat_2_start_row][boat_2_start_index - 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . "
        @computer_board[boat_2_start_row][boat_2_start_index - 1] = " B "
        @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
      elsif @computer_board[boat_2_start_row][boat_2_start_index - 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index - 2] == " . "
        @computer_board[boat_2_start_row][boat_2_start_index - 1] = " B "
        @computer_board[boat_2_start_row][boat_2_start_index - 2] = " B "
      else
        second_boat_placement
      end
    elsif direction_boat_2 == 1
    #1 is vertical
      if @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . " && @computer_board[boat_2_start_row + 2][boat_2_start_index] == " . "
        @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row + 2][boat_2_start_index] = " B "
      elsif @computer_board[boat_2_start_row -1 ][boat_2_start_index] == " . " && @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . "
        @computer_board[boat_2_start_row - 1][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
      elsif @computer_board[boat_2_start_row -1 ][boat_2_start_index] == " . " && @computer_board[boat_2_start_row -2 ][boat_2_start_index] == " . "
        @computer_board[boat_2_start_row - 1][boat_2_start_index] = " B "
        @computer_board[boat_2_start_row - 2][boat_2_start_index] = " B "
      else
        second_boat_placement
      end
    end
  end
  # def second_boat_placement
  #   boat_2_start_row = rand(1..2)
  #   boat_2_start_index = rand(1..2)
  #   start_location_boat_two = computer_board[boat_2_start_row][boat_2_start_index]
  #   if start_location_boat_two == " . "
  #     @computer_board[boat_2_start_row][boat_2_start_index] = " B "
  #   else
  #     second_boat_placement
  #   end
  #   direction_boat_2 = boat_direction
  #   #0 is horizontal
  #   if direction_boat_2 == 0
  #     if @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index + 2] == " . "
  #       @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
  #       @computer_board[boat_2_start_row][boat_2_start_index + 2] = " B "
  #     elsif @computer_board[boat_2_start_row][boat_2_start_index - 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index + 1] == " . "
  #       @computer_board[boat_2_start_row][boat_2_start_index - 1] = " B "
  #       @computer_board[boat_2_start_row][boat_2_start_index + 1] = " B "
  #     elsif @computer_board[boat_2_start_row][boat_2_start_index - 1] == " . " && @computer_board[boat_2_start_row][boat_2_start_index - 2] == " . "
  #       @computer_board[boat_2_start_row][boat_2_start_index - 1] = " B "
  #       @computer_board[boat_2_start_row][boat_2_start_index - 2] = " B "
  #     end
  #   elsif direction_boat_2 == 1
  #   #1 is vertical
  #     if @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . " && @computer_board[boat_2_start_row + 2][boat_2_start_index] == " . "
  #       @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
  #       @computer_board[boat_2_start_row + 2][boat_2_start_index] = " B "
  #     elsif @computer_board[boat_2_start_row -1 ][boat_2_start_index] == " . " && @computer_board[boat_2_start_row + 1][boat_2_start_index] == " . "
  #       @computer_board[boat_2_start_row - 1][boat_2_start_index] = " B "
  #       @computer_board[boat_2_start_row + 1][boat_2_start_index] = " B "
  #     elsif @computer_board[boat_2_start_row -1 ][boat_2_start_index] == " . " && @computer_board[boat_2_start_row -2 ][boat_2_start_index] == " . "
  #       @computer_board[boat_2_start_row - 1][boat_2_start_index] = " B "
  #       @computer_board[boat_2_start_row - 2][boat_2_start_index] = " B "
  #     end
  #   end
  # end

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
