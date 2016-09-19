module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

module IntegerToRomanNumeral
  @@num_map = {
    :ones => ['I', 'V', 'X'],
    :tens => ['X', 'L', 'C'],
    :hundreds => ['C', 'D', 'M'],
    :thousands => ['M', 'V', 'X'],
  }

  @@places = [:ones, :tens, :hundreds, :thousands]

  def to_roman
    result = ''

    num = self
    current_place_index = 0

    while num != 0
      place_value = num % 10
      result = translate_by_place(place_value, @@places[current_place_index]) + result

      num /= 10
      current_place_index += 1
    end

    result
  end

  def translate_by_place(num, place)
    small = @@num_map.fetch(place)[0]
    med = @@num_map.fetch(place)[1]
    big = @@num_map.fetch(place)[2]

    case
    when num < 4
      small * num
    when num == 4
      small + med
    when num == 5
      med
    when num > 5 && num < 9
      med + small * (num - 5)
    when num == 9
      small + big
    end

  end
end

class Integer
  include IntegerToRomanNumeral
end

