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
    binding.pry
    ""
  end

  # def
  def player_place_boats
    @user_board = GameBoard.new("Player")
  end

  def input_keys
    keys = InputKeys.new
    keys
  end

  def shot(spot)
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

  def game_start_time
    #going to lead to an instance variable that starts records start time.
  end


end
