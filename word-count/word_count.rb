module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.split(/[\s,]/)
  end

  def word_count
    @phrase
    .select do |word|
      contains_valid_char?(word)
    end
    .reduce(Hash.new(0)) do |memo, word|
      word = format_word(word)

      memo[word] = memo[word] + 1
      memo
    end
  end

  private

  def contains_valid_char?(word)
    /[a-zA-Z0-9']/.match(word).nil? ? false : true
  end

  def format_word(word)
    word = word.split('').map do |letter|
      /[a-zA-Z0-9']/.match(letter).nil? ? next : letter
    end.join.downcase

    word = word.slice(1..-2) if word[0] == "'"

    word
  end
end

