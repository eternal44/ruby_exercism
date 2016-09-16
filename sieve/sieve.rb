class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    divisor = 2
    sieve_arr = [*2..@num]

    while sieve_arr[divisor] do
      sieve_arr.slice(divisor, sieve_arr.length).each do |el|
        sieve_arr.delete(el) if el % divisor == 0
      end

      divisor += 1
    end

    sieve_arr
  end
end
