module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase
    .split(/[\s,]/)
    .select do |word|
      /[a-zA-Z0-9]/.match(word).nil? ? false : true
    end
    .reduce(Hash.new(0)) do |memo, word|
      word = word.split('').map do |letter|
        /[a-zA-Z0-9']/.match(letter).nil? ? next : letter
      end.join.downcase

      word = word.slice(1..-2) if word[0] == "'"

      memo[word] = memo[word] + 1
      memo
    end
  end
end
