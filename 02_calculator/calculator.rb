#write your code here

def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    sum_initial = 0
    iterations = array.length
    iterations.times do |i|
        sum_initial += array[i]
    end
    sum_final = sum_initial
end

def multiply(array)
    initial = 1
    iterations = array.length
    iterations.times do |i|
        initial *= array[i]
    end
    final = initial
end

def power(num1, num2)
    num1**num2
end

def factorial(num1)
    return 1 if num1 == 0
    return num1 * factorial(num1 - 1)
end