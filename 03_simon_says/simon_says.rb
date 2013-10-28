def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, repetitions=2)
  repeated = ""
  repetitions.times do
    repeated << "#{message} "
  end
  repeated[0..-2]
end

def start_of_word(word, characters)
  word[0..characters-1]
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  if !(string.include?(' '))
    return string.capitalize
  else
    words = string.split(' ')
    words = words.map { |w| w.capitalize! }
    title = words.shift
    words = words.map do |w|
      w.downcase! if w == "The" || w == "And"
      title << " #{w}"
    end
    return title
  end
end