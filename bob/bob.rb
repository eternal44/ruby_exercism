require 'pry'

class Bob
  def hey(phrase)
    return 'Fine. Be that way!' if phrase.strip == ''
    return 'Whoa, chill out!' if phrase == phrase.upcase && /[A-Z]/.match(phrase) != nil
    return 'Sure.' if phrase[-1] == '?' && phrase.split('')

    'Whatever.'
  end
end
