module BookKeeping
  VERSION = 2
end

class Robot
  @@name_bank = {}

  def initialize
    @name = generate_name
    while @@name_bank.has_key?(@name)
      @name = generate_name
    end
    @@name_bank[@name] = true
  end

  def name
    @name
  end

  def reset
    @name = generate_name
  end

  def generate_name
    'FE' + Random.rand(100..999).to_s
  end
end
