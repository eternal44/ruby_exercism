module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Pangram
  def self.is_pangram?(string)
    letters_found_count = 0

    letter_hash = string.downcase.split('').each_with_object({}) do |letter, memo|
      check = /[a-z]/.match(letter).to_a
      is_lower_case_letter = check.count > 0

      if is_lower_case_letter && memo[letter] == nil
        letters_found_count += 1
        memo[letter] = true
      end
    end

    letters_found_count == 26
  end
end

