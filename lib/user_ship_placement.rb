require './lib/input_keys'
require 'pry'

class UserShipPlacement
  attr_accessor :user_board, :boat_2_long_positions, :boat_3_long_positions

  def initialize
    @user_board = [
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
    system "clear"
    puts Messages.ship_placement_message
    boat_direction_input = gets.chomp
    direction_boat_1 = keys.direction[boat_direction_input]
      if direction_boat_1 == 0      #0 is horizontal
        system "clear"
        puts full_board_show
        puts Messages.first_user_boat_position_prompt_horizontal_message
        input = gets.chomp.downcase
        boat_1_start_row = keys.board_position[input][0]
        boat_1_start_index = keys.board_position[input][1]
        if @user_board[boat_1_start_row][boat_1_start_index] == " . " &&
           @user_board[boat_1_start_row][boat_1_start_index + 1] == " . "
          @user_board[boat_1_start_row][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
          @user_board[boat_1_start_row][boat_1_start_index + 1] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index + 1]
        else
          system "clear"
          puts Messages.invalid_boat_placement_message
          sleep(2)
          first_boat_placement
        end
      elsif direction_boat_1 == 1     #1 is vertical
        system "clear"
        puts full_board_show
        puts Messages.first_user_boat_position_prompt_vertical_message
        input = gets.chomp.downcase
        boat_1_start_row = keys.board_position[input][0]
        boat_1_start_index = keys.board_position[input][1]
        if @user_board[boat_1_start_row][boat_1_start_index] == " . " &&
           @user_board[boat_1_start_row + 1][boat_1_start_index] == " . "
          @user_board[boat_1_start_row][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row, boat_1_start_index]
          @user_board[boat_1_start_row + 1][boat_1_start_index] = " B "
          @boat_2_long_positions << [boat_1_start_row + 1, boat_1_start_index]
        else
          system "clear"
          puts Messages.invalid_boat_placement_message
          sleep(2)
          first_boat_placement
        end
      end
    system "clear"
    puts full_board_show
    puts Messages.first_boat_placed_message
    sleep(3)
  end

  def second_boat_placement
    system "clear"
    puts full_board_show
    puts Messages.ship_placement_message_two
    boat_direction_input = gets.chomp
    direction_boat_2 = keys.direction[boat_direction_input]
    if direction_boat_2 == 0      #0 is horizontal
      system "clear"
      puts full_board_show
      puts Messages.second_user_boat_position_prompt_horizontal_message
      input = gets.chomp.downcase
      boat_2_start_row = keys.board_position[input][0]
      boat_2_start_index = keys.board_position[input][1]
      if @user_board[boat_2_start_row][boat_2_start_index] == " . " &&
          @user_board[boat_2_start_row][boat_2_start_index + 1] == " . " &&
          @user_board[boat_2_start_row][boat_2_start_index + 2] == " . "
        @user_board[boat_2_start_row][boat_2_start_index] = " B "
        @user_board[boat_2_start_row][boat_2_start_index + 1] = " B "
        @user_board[boat_2_start_row][boat_2_start_index + 2] = " B "
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 1]
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index + 2]
      else
        system "clear"
        puts Messages.invalid_boat_placement_message
        sleep(2)
        second_boat_placement
      end
    elsif direction_boat_2 == 1   #1 is vertical
      system "clear"
      puts full_board_show
      puts Messages.second_user_boat_position_prompt_vertical_message
      input = gets.chomp.downcase
      boat_2_start_row = keys.board_position[input][0]
      boat_2_start_index = keys.board_position[input][1]
      if @user_board[boat_2_start_row][boat_2_start_index] == " . " &&
          @user_board[boat_2_start_row + 1][boat_2_start_index] == " . " &&
          @user_board[boat_2_start_row + 2][boat_2_start_index] == " . "
        @user_board[boat_2_start_row][boat_2_start_index] = " B "
        @user_board[boat_2_start_row + 1][boat_2_start_index] = " B "
        @user_board[boat_2_start_row + 2][boat_2_start_index] = " B "
        @boat_3_long_positions << [boat_2_start_row, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row + 1, boat_2_start_index]
        @boat_3_long_positions << [boat_2_start_row + 2, boat_2_start_index]
      else
        system "clear"
        puts Messages.invalid_boat_placement_message
        sleep(2)
        second_boat_placement
      end
    end
    system "clear"
    puts full_board_show
    puts Messages.second_boat_placed_message
    sleep(3)
  end

  def boat_direction
    rand(0..1)
  end

  def keys
    InputKeys.new
  end

  def full_board_show
      "                             1  2  3  4
                          A #{@user_board[0][0]}#{@user_board[0][1]}#{@user_board[0][2]}#{@user_board[0][3]}
                          B #{@user_board[1][0]}#{@user_board[1][1]}#{@user_board[1][2]}#{@user_board[1][3]}
                          C #{@user_board[2][0]}#{@user_board[2][1]}#{@user_board[2][2]}#{@user_board[2][3]}
                          D #{@user_board[3][0]}#{@user_board[3][1]}#{@user_board[3][2]}#{@user_board[3][3]}
"
  end
end
