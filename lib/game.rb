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
    check_for_game_over
  end

  def take_turns_shooting
    human_shot
    computer_shot
    check_for_game_over
  end

  def check_for_game_over
    take_turns_shooting
    #THIS MUST CHECK TO SEE IF ONE PLAYER HAS ACHIEVED 5 SHOTS!!!!!

  end

  def human_shot
    system "clear"
    puts show_both_boards
    puts Messages.pick_human_shot_coordinates_message
    take_human_shot
    sleep(1)
  end

  def computer_shot
    sleep(1)
    system "clear"
    random_letter = ["a", "b", "c", "d"].sample
    random_number = rand(1..4)
    shot = random_letter + "#{random_number}"
    input = input_keys.board_position[shot]
    row = input[0]
    index = input[1]
    if user_board.data[row][index] == " M "
      computer_shot
    elsif user_board.data[row][index] == " H "
      computer_shot
    elsif user_board.data[row][index] == " . "
      shot_on_user(shot)
      user_board.data[row][index] = " M "
      puts show_both_boards
      puts " COMPUTER MISSED"
      sleep(2)
    elsif user_board.data[row][index] == " B "
      shot_on_user(shot)
      user_board.data[row][index] = " H "
      puts show_both_boards
      puts " COMPUTER HIT ONE OF YOUR BOATS!"
      sleep(2)
    end
  end

  def take_human_shot
    shot = gets.chomp.downcase
    input = input_keys.board_position[shot]
    row = input[0]
    index = input[1]
    system "clear"
    if computer_board.data[row][index] == " M "
      puts show_both_boards
      puts Messages.already_shot_here
      take_human_shot
    elsif computer_board.data[row][index] == " H "
      puts show_both_boards
      puts Messages.already_shot_here
      take_human_shot
    elsif computer_board.data[row][index] == " . "
      shot_on_computer(shot)
      computer_board.data[row][index] = " M "
      puts show_both_boards
      puts Messages.user_miss
    elsif computer_board.data[row][index] == " B "
      shot_on_computer(shot)
      computer_board.data[row][index] = " H "
      puts show_both_boards
      puts Messages.user_hit
    end
  end

  def show_both_boards
    "#{user_board.full_user_board}
#{computer_board.full_computer_board_view}
"
  end

  def player_place_boats
    @user_board = GameBoard.new("Player")
  end

  def input_keys
    keys = InputKeys.new
    keys
  end

  def shot_on_user(spot)
    targeted_space = input_keys.board_position[spot]
    targeted_row = targeted_space[0]
    targeted_index = targeted_space[1]
    if user_board.data[targeted_row][targeted_index] == " . "
      user_board.data[targeted_row][targeted_index] = " M "
    elsif user_board.data[targeted_row][targeted_index] == " B "
      user_board.data[targeted_row][targeted_index] = " H "
    end
  end


  def shot_on_computer(spot)
    targeted_space = input_keys.board_position[spot]
    targeted_row = targeted_space[0]
    targeted_index = targeted_space[1]
    if computer_board.data[targeted_row][targeted_index] == " . "
      computer_board.data[targeted_row][targeted_index] = " M "
    elsif computer_board.data[targeted_row][targeted_index] == " B "
      computer_board.data[targeted_row][targeted_index] = " H "
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
