require './lib/messages'
require './lib/game_board'
require './lib/input_keys'
require 'pry'

class Game
  attr_accessor :game_start_time, :computer_board, :user_board

  def initialize
    @computer_board = GameBoard.new
    @user_board = GameBoard.base_game_board
    @game_start_time = nil
  end

  def activate_game_play
    player_place_boats
    @game_start_time = Time.now
    start_game
  end

  def start_game
    take_turns_shooting
  end

  def take_turns_shooting
    human_shot
    binding.pry
    ""
  end

  def human_shot
    system "clear"
    puts computer_board.full_computer_board_view
    puts Messages.pick_human_shot_coordinates_message
    pick_human_shot_coordinates
  end

  def pick_human_shot_coordinates
    shot = gets.chomp
    input = input_keys.board_position[shot]
    row = input[0]
    index = input[1]
    # binding.pry
    if computer_board.data[row][index] == " M "
      puts computer_board.full_computer_board_view
      puts Messages.already_shot_here
      pick_human_shot_coordinates
    elsif computer_board.data[row][index] == " H "
      puts computer_board.full_computer_board_view
      puts Messages.already_shot_here
      pick_human_shot_coordinates
    elsif computer_board.data[row][index] == " . "
      computer_board.data[row][index] = " M "
      puts computer_board.full_computer_board_view
      puts Messages.user_miss
    elsif computer_board.data[row][index] == " B "
      computer_board.data[row][index] = " H "
      puts computer_board.full_computer_board_view
      puts Messages.user_hit
    end
  end

  def player_place_boats
    @user_board = GameBoard.new("Player")
  end

  def input_keys
    keys = InputKeys.new
    keys
  end

  def shot_on_computer(spot)
    targeted_space = input_keys.board_position[spot]
    targeted_row = targeted_space[0]
    targeted_index = targeted_space[1]
    if computer_board.data[targeted_row][targeted_index] == " . "
      # puts Messages.user_miss   <<<<< SHOWS IN TESTS!
      computer_board.data[targeted_row][targeted_index] = " M "
    elsif computer_board.data[targeted_row][targeted_index] == " B "
      computer_board.data[targeted_row][targeted_index] = " H "
    # elsif computer_board.data[targeted_row][targeted_index] == " H "
    #   YOU HAVE ALREADY HIT THIS SPOT
    end
  end

  def count_hits_against_computer
    hits_found = 0
    computer_board.data.flatten.each do |spot|
      if spot == " H "
        hits_found += 1
      end
    end
    hits_found
  end

  def computer_boat_2_long_sunk?
    if (computer_board.data[computer_board.small_boat[0][0][0]][computer_board.small_boat[0][0][1]] &&
      computer_board.data[computer_board.small_boat[0][1][0]][computer_board.small_boat[0][1][1]]) == " H "
      true
    else
      false
    end
  end

  def computer_boat_3_long_sunk?
    if (computer_board.data[computer_board.big_boat[0][0][0]][computer_board.big_boat[0][0][1]] &&
      computer_board.data[computer_board.big_boat[0][1][0]][computer_board.big_boat[0][1][1]] &&
      computer_board.data[computer_board.big_boat[0][2][0]][computer_board.big_boat[0][2][1]]) == " H "
      true
    else
      false
    end
  end

  def check_computer_boat_two_long
    if computer_boat_2_long_sunk? == true
      Messages.boat_two_long_is_sunk
    else
      Messages.boat_two_long_still_floating
    end
  end

  def check_computer_boat_three_long
    if computer_boat_3_long_sunk? == true
      Messages.boat_three_long_is_sunk
    else
      Messages.boat_three_long_still_floating
    end
  end

  def game_start_time
    #going to lead to an instance variable that starts records start time.
  end


end
