class Temperature
  def initialize(temp)
    @temp = temp
  end

  def self.in_celsius(ctemp)
    Temperature.new({:c => ctemp })
  end

  def self.in_fahrenheit(ftemp)
    Temperature.new({:f => ftemp })
  end

  def to_fahrenheit
    return @temp[:f] unless @temp[:f].nil?
    return Temperature.ctof(@temp[:c])
  end

  def to_celsius
    return Temperature.ftoc(@temp[:f]) unless @temp[:f].nil?
    return @temp[:c]
  end

  def self.ftoc(ftemp)
    (ftemp - 32) * 5 / 9
  end

  def self.ctof(ctemp)
    (ctemp * 180 / 100) + 32
  end
end

class Celsius < Temperature
  def initialize(temp)
    @temp = { :c => temp }
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temp = { :f => temp }
  end
end