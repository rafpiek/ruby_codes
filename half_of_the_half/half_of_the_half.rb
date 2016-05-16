# Given a sequence of 2*k characters.
# Print every second character from the first half of the sequence.
# Start printing with the first character.
  #INPUT
    # 1) posiiive integer t(1<=t<=100) the number of testcccccccc.
        # In the each of the next t lines, you are given a sequence
        # of 2*k(1<=k<=100) characters
class HalfOfTheHalf
  def self.run
    puts "Please type the number of words you want to process."
    number_of_words = gets.chomp.to_i
    words = []

    number_of_words.times do
      words << get_word
    end

    output =[]

    words.each do |word|
      half_of_the_half = ""
      word_half = word[0,word.length / 2]
      word_half.length.times do |char_number|
        half_of_the_half << word_half[char_number] if char_number.even?
      end
      output << half_of_the_half
    end

    output.each{ |result| puts result}
    # self.run
  end

  private
  def self.get_word
    input = nil
    while !is_word_valid?(input)
      puts "Please type your word."
      input = gets.chomp
    end
    return input
    # get_word
  end

  def self.is_word_valid?(word)
    return false unless word
    if word.length % 2 == 0
      true
    else
      puts "The number of chars in the word should be EVEN!"
      false
    end
    # is_word_valid?
  end

  private_class_method :get_word, :is_word_valid?

  # class HalfOfTheHalf
end


HalfOfTheHalf.run
