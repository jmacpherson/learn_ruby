class Array
  def sum
    result = 0
    self.each { |x| result += x }
    result
  end

  def square
    return self if self.empty?
    return self.map { |x| x ** 2 }
  end

  def square!
    return self if self.empty?
    return self.map! { |x| x ** 2 }
  end
end