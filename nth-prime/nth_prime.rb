class Prime
  def self.nth(max_primes_count)
    raise ArgumentError unless max_primes_count != 0

    current_number = 2
    nth_prime = 2

    while max_primes_count > 0
      if self.is_prime?(current_number)
        nth_prime = current_number
        max_primes_count -= 1
      end
      current_number += 1
    end

    nth_prime
  end

  def self.is_prime?(num)
    max_check = Math.sqrt(num)

    for i in 2..max_check
      return false if num % i == 0
    end

    true
  end
end

