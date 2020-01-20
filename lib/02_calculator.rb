num1 = gets.chomp.to_i
num2 = gets.chomp.to_i
arr = []

def add(num1, num2)
    return (num1 + num2)
end

def subtract(num1, num2)
    return (num1 - num2)
end

def sum(arr)
    return arr.sum
end

def multiply(num1, num2)
    return (num1 * num2)
end

def power(num1, num2)
    return (num1 ** num2)
end

def factorial(num1)
    if num1 < 0 
        return nil
    elsif num1 == 0
        return 1 
    else
        result = 1
        while num1 > 0
            result = result * num1
            num1 -= 1
        end
    end
    return result
end