def add (number1, number2)
	number1 + number2
end


def subtract(number1, number2)
	number1 - number2
end



def sum (array)
	suma = 0
	array.each do |value|
		suma += value
	end
	return suma
end



def multiply(array)
	result_multiply = 1
	array.each do |value|
		result_multiply *= value
	end
	return result_multiply	
end

def power(number1, number2)
	number1 ** number2
end	

def factorial(number)
	result_factorial = 1
	if number < 0
		return nil
	end
	while number > 0
		result_factorial *= number
		number -= 1
	end
	return result_factorial			
end	