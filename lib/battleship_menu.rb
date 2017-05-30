require './lib/game'
require './lib/messages'
require "pry"
class BattleshipMenu

  def start_menu
    puts Messages.main_menu_message
    Messages.welcome_speak
    menu_input = gets.chomp.downcase
    handle_menu_input(menu_input)
  end

  def handle_menu_input(menu_input)
    if menu_input == ("q" || "quit")
      system "clear"
      puts Messages.quit_game_message
    elsif menu_input == ("i" || "instructions")
      system "clear"
      puts Messages.instructions_message
      pause = gets.chomp
      system "clear"
      start_menu
    elsif menu_input == ("p" || "play")
      game = Game.new
      system "clear"
      # game.game_start_time = Time.now or something like that.
      game.activate_game_play
      play_again?
    else
      system "clear"
      start_menu
    end
  end

  def play_again?
    puts "Want to Play Again?  (y)es   (n)o"
    input = gets.chomp.downcase
    if input == "y"
      start_menu
    elsif input == "n"
      system "clear"
      puts Messages.quit_game_message
    else
      puts "Invalid Option! Try Again"
      play_again?
    end
  end

end
