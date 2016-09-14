class Hamming
  def self.compute(strand1, strand2)
    diff_count = 0
    raise ArgumentError if strand1.length != strand2.length

    strand1.split('').each_with_index do |letter, index|
      diff_count += 1 if strand1[index] != strand2[index]
    end

    diff_count
  end
end
