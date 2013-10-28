def reverser
  string = yield
  if string.include?(' ')
    words = string.split(' ') 
    words = words.map { |word| word.reverse }
    return words.join(' ')
  else
    return string.reverse
  end
end

def adder(add=1)
  yield + add
end

def repeater(repetitions=1)
  repetitions.times { yield }
end