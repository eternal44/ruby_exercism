module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  def self.comp_map
    {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U',
    }
  end

  def self.of_dna(strand)
    strand.split('').reduce('') do |memo, letter|
      if comp_map[letter]
        memo += comp_map[letter]
      else
        return ''
      end
    end

  end
end
