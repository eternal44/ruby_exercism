class Array
  def accumulate(&block)
    return [] if self.count == 0

    self.map do |el|
      yield(el)
    end
  end
end
