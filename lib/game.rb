require_relative 'display'
require_relative 'host'
# main game logic
class Game
  include Display

  attr_reader :host

  def initialize
    @host = Host.new
    main_menu
  end

  def main_menu
    display_main_menu
    input = gets.chomp.to_i
    until input.between?(1, 3)
      display_invalid_input_error
      input = gets.chomp.to_i
    end
    main_menu_options(input)
  end

  def main_menu_options(input)
    case input
    when 1
      play_game
    when 2
      load_game
    when 3
      exit_game
    end
  end

  def play_game
    @host.choose_word
  end

  def exit_game
    display_exit_message
    exit
  end
end
