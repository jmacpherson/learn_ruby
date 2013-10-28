class RPNCalculator
  attr_reader :value
  DIGITS = ["1","2","3","4","5","6","7","8","9"]
  OPERATORS = ["*","+","/","-"]

  def initialize
    @queue = []
    @value = 0
    @reserve_value = 0
  end

  def push(num)
    @queue << num
  end

  def plus
    raise("calculator is empty") if @queue.length == 0
    return @value += @queue.pop + @queue.pop unless @queue.length == 1
    return @value += @queue.pop
  end

  def minus
    raise("calculator is empty") if @queue.length == 0
    @reserve_value = @value if @value != 0
    n2 = @queue.pop
    n1 = @queue.pop
    return @value = n1 - n2
  end

  def divide
    raise("calculator is empty") if @queue.length == 0 && @reserve_value == 0
    if @reserve_value != 0 && @value != 0
      return @value = @reserve_value.to_f / @value.to_f
    end
    n2 = @queue.pop.to_f
    n1 = @queue.pop.to_f
    # return @value = @value.to_f / @queue.pop.to_f if @queue.length == 1
    return @value = n1 / n2
  end

  def times
    raise("calculator is empty") if @queue.length == 0
    return @value = @queue.pop.to_i * @queue.pop.to_i unless @queue.length == 1
    return @value = @value * @queue.pop.to_i
  end

  def tokens(string)
    tokenized = string.split(' ')
    tokenized = tokenized.map do |x| 
      if DIGITS.include?(x)
        x.to_i 
      elsif OPERATORS.include?(x)
        x.to_sym 
      end
    end
    return tokenized
  end

  def evaluate(string)
    @value = 0
    @reserve_value = 0
    tokenized = tokens(string)
    tokenized.each do |token|
      if (0..9).include?(token)
        push(token)
      elsif token == :*
        @value = times
      elsif token == :/
        puts @value
        @value = divide
      elsif token == :-
        @value = minus
        p @value
      elsif token == :+
        @value = plus
        p @value
      end
    end
    return @value
  end
end