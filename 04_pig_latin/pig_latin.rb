VOWELS = ["a","e","i","o","u"]
PUNCTUATION = ['!','?',',','.']

def translate(phrase)
  unless phrase.include?(' ')
    if VOWELS.include?(phrase[0].downcase)
      return phrase << "ay"
    else
      initial = initials(phrase)
      phrase_start_index = initial.length
      phrase = phrase.split('')[phrase_start_index..-1]
      final_punctuation = phrase.pop if PUNCTUATION.include?(phrase[-1])
      phrase = phrase.join('')
      phrase.capitalize! if initial.downcase! != nil
      return phrase << "#{initial}ay#{final_punctuation}" unless final_punctuation.nil?
      return phrase << "#{initial}ay"
    end
  else
    final_phrase = phrase.split(' ').map { |w| translate(w) }
    return final_phrase.join(' ')
  end
end

def initials(phrase)
  split_phrase = phrase.split('')
  i = 0
  initial = ""
  until VOWELS.include?(split_phrase[i])
    initial << split_phrase[i]
    i += 1
  end
  initial << split_phrase[i] if initial[-1] == 'q' && split_phrase[i] == 'u'
  return initial
end