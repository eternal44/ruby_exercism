class Array
  def keep
    self.select do |el|
      yield el
    end
  end

  def discard
    self.reject do |el|
      yield el
    end
  end
end
