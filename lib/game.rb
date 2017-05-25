require './lib/messages'
require './lib/game_board'
require 'pry'

class Game
  attr_accessor :game_start_time, :computer_board, :user_board

  def initialize
    @computer_board = GameBoard.new
    @user_board = GameBoard.base_game_board
    @game_start_time = 0
  end

  def player_place_boats
    @user_board = GameBoard.new("Player")
  end

  def game_start_time
    #going to lead to an instance variable that starts records start time.
  end

  def active_game_play
    player_place_boats
  end
end
