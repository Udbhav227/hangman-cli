require_relative 'colorable'
module Display # rubocop:disable Style/Documentation
  include Colorable

  def display_main_menu
    system 'clear'
    menu = <<~HEREDOC.chomp
      Welcome to the famous "HANGMAN" game!

      1. Play Game

      2. Load Game

      3. Quit

      Please, make your choice: 
    HEREDOC

    print menu
  end

  def display_invalid_input_error
    print red("\nInvalid input, enter again: ")
  end

  def display_choosing_word # rubocop:disable Metrics/MethodLength
    system 'clear'

    transition_phrases = [
      'Picking a word that’s just tricky enough',
      'Dusting off the dictionary',
      'Flipping through the word vault',
      'Hunting down the perfect word to stump you',
      'Consulting the ancient texts for a word',
      'The hangman is checking his wordlist',
      'Sharpening the noose... I mean, selecting the word!',
      'The hangman is thinking... and it’s not good news!',
      'Choosing a word with extra letters for extra fun!'
    ]

    print "\n#{transition_phrases.sample}"
    8.times do
      sleep(0.4)
      print '.'
    end
    puts green('Done!')
  end

  def display_exit_message # rubocop:disable Metrics/MethodLength
    exit_messages = [
      'Thanks for playing Hangman! Hope to see you again soon!',
      'Goodbye! Have a good day!',
      'You’ve chosen to exit. Come back and play again!',
      'Game over! Take care, and see you next time!',
      'Exiting the game. Don’t forget to practice your word-guessing skills!',
      'Thanks for hanging out! Until next time!',
      'You’re leaving so soon? We’ll miss you! See you later!',
      'Game exited. Stay sharp, and see you in the next round!',
      'Catch you later! Don’t let the hangman catch you next time!',
      'Running away? The hangman’s rope will miss you!',
      'The hangman sighs in disappointment. Come back soon!',
      'You dodged the gallows... for now!',
      'Hangman says goodbye! Come back when you’re ready for more!'
    ]

    puts "\n#{exit_messages.sample}"
  end
end
