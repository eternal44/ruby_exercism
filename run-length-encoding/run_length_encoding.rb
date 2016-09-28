require 'pry'

module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    result = ''
    previous_letter = input[0]
    count = 0

    input.split('').each do |letter|
      if letter != previous_letter
        count = count == 1 ? '' : count
        result << count.to_s + previous_letter
        previous_letter = letter
        count = 0
      end
      count += 1
    end

    count = count == 1 ? '' : count
    result << count.to_s + previous_letter
  end

  def self.decode(input)
    result = ''
    current_num = ''
    input.split('').each do |el|
      # when el is number
      if el.to_i !=0 && el != '0' && /[A-Z]/.match(el) == nil
        current_num << el
      # when el is letter wthouth a number
      elsif el.to_i == 0 && el != '0' && current_num == ''
        result << el
      #when el is a letter with number
      else
        result << el * current_num.to_i
        current_num = ''
      end
    end

    result
  end
end
