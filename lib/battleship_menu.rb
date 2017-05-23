require './lib/game'
require "pry"
class BattleshipMenu

  def start_menu
    messages = Messages.new
    puts messages.main_menu_message
    menu_input = gets.chomp.downcase
    handle_menu_input(messages, menu_input)
  end

  def handle_menu_input(messages, menu_input)
    if menu_input == ("q" || "quit")
      system "clear"
      puts messages.quit_game_message
    elsif menu_input == ("i" || "instructions")
      system "clear"
      puts messages.instructions_message
      pause = gets.chomp
      system "clear"
      start_menu
    elsif menu_input == ("p" || "play")
      game = Game.new
      # binding.pry
      system "clear"
      # game.game_start_time = Time.now
      game.active_game_play
    else
      system "clear"
      start_menu
    end
  end

end
