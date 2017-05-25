require './lib/messages'
require './lib/game_board'
require 'pry'

class Game
  attr_accessor :game_start_time, :computer_board, :user_board

  def initialize
    @computer_board = GameBoard.new
    @user_board = GameBoard.new("Player")
    @game_start_time = 0
  end

  def game_start_time
    #going to lead to an instance variable that starts records start time.
  end

  def active_game_play
    #will trigger actual gameplay once the boards are set up.
  end
end
