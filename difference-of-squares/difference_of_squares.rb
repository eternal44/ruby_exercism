module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).reduce(0) do |memo, num|
      memo += num
    end ** 2
  end

  def sum_of_squares
    (1..@num).reduce(0) do |memo, num|
      memo += num ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
