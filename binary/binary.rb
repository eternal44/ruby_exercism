module BookKeeping
  VERSION = 2
end
class Binary
  def initialize(binary)
    raise ArgumentError, 'Cannot process non-binary numbers' unless /[2-9a-z]/.match(binary).nil?
    @binary = binary
  end

  def to_decimal
    power = @binary.length

    @binary.split('').reduce(0) do |sum, num|
      power -= 1
      sum + num.to_i * 2 ** power
    end
  end
end
