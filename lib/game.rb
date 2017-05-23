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

end
#
# binding.pry
# ''
