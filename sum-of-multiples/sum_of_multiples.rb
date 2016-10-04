# incomplete answer - skipping
class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def to(max_limit)
    @nums.reduce(0) do |sum, num|
      increment_by = num

      while num < max_limit
        sum += num >= max_limit ? 0 : num
        num += increment_by
      end

      sum += num >= max_limit ? 0 : num
    end
  end
end
