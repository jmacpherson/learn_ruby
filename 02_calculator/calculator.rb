def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(nums)
  sum = 0
  nums.each { |num| sum += num }
  sum
end

def multiply(*nums)
  product = nums.shift
  nums.each { |num| product = product * num }
  product
end

def factorial(num)
  result = 1
  result = 0 if num == 0
  1.upto(num) do |n|
    result = result * n
  end
  result
end