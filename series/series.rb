class Series
  def initialize(num_string)
    @num_string = num_string
  end

  def slices(size)
    raise ArgumentError if size > @num_string.length

    result = []

    str_arr = @num_string.split('').map { |char| char.to_i }

    str_arr.each_with_index do |char, index|
      result.push(str_arr.slice(index,size)) unless index + size > str_arr.length
    end

    result
  end
end
