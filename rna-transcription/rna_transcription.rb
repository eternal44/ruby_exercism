module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }

  def self.of_dna(strand)
    strand.split('').reduce('') do |rna, nucleotide|

      if DNA_TO_RNA[nucleotide]
        rna << DNA_TO_RNA[nucleotide]
      else
        return ''
      end
    end

  end
end
