def add(num1, num2)
   num1 + num2
end

def subtract(num1, num2)
   num1 - num2
end

def sum(array)
    return 0 if array.empty?
    array.inject(:+)
end

def multiply(*numbers)
    product = 1
    numbers.each { |num| product *= num }
    product
end

def power(base, exponent)
    base**exponent
end

def factorial(n)
   return 1 if n == 0
   product = 1
   n.downto(1).each { |num| product *= num }
   product
end
