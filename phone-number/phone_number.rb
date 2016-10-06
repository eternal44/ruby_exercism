require 'pry'
class PhoneNumber

  def initialize(number)
    @number = number.gsub(/[\s+()-.]/, '')
  end

  def number
    valid_number? ? @number : alternative_returns
  end


  def area_code
    number[ 0..2 ]
  end

  def to_s
    raw_num = number
    area_code = raw_num[ 0..2 ].to_s
    first_part = raw_num[ 3..5 ].to_s
    second_part = raw_num[ 6..9 ].to_s

    "(#{area_code}) #{first_part}-#{second_part}"
  end

  private

  def alternative_returns
    if @number.length == 11 && @number[0] == '1' ||
      @number.length == 10 && !@number.match(/[a-z]/)

      return @number.slice(1..-1)
    else
      return '0' * 10
    end
  end

  def valid_number?
    if @number.length > 9 && !@number.match(/[a-z]/) && @number.length < 11
      if @number.length == 11
        return @number[0] == '1' ? true : false
      end

      return true
    else
      return false
    end
  end
end
