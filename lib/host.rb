# Game setup
class Host
  attr_accessor :words
  attr_reader :secret_word

  def initialize
    @words = File.readlines('./lib/google-10000-english-no-swears.txt').map(&:chomp)
  end

  def choose_word
    display_choosing_word
    filtered_words = @words.select { |word| word.length.between?(5, 12) }
    @secret_word = filtered_words.sample
    # p @secret_word
  end
end
