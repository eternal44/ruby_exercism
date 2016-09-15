module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  def self.of_dna(strand)
    comp_map = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U',
    }

    strand.split('').reduce('') do |memo, letter|
      if comp_map[letter]
        memo += comp_map[letter]
      else
        return ''
      end
    end

  end
end
