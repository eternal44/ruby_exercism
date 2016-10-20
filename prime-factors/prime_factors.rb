class PrimeFactors
  def self.for(num)

    return [] if num == 1
    return [num] if num == 2 || num == 3

    result = []
    divisor = 2

    while num / divisor.to_f != 1
      if num % divisor == 0
        num /= divisor

        result << divisor
      else
        divisor += 1
      end
    end

    result << divisor if num / divisor == 1

  end
end
