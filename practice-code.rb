require 'rspec/autorun'

#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the nth prime number?

def nth_prime(n)

  arry_prime = []
  value = 2

  while arry_prime.size < n
    if is_prime?(value)
      arry_prime << value
    end
    value += 1
  end
  arry_prime[-1]
end      

def is_prime?(num)
  if num <= 1
    return false
  end
  value = 2
  while value < num
    return false if (num % value == 0)
    value += 1
  end
  true
end 


#Largest Prime Factor
#The prime factors of 13195 are 5, 7, 13 and 29. Thus, the largest prime factor of 13195 is 29.
#What is the largest prime factor of the number 600851475143 ?

def largest_factor(number)
  result = prime_factors(number).sort
  result[-1]
end

def prime_factors(num)
  value = 1
  arry = []
  while value < num
    if is_prime?(value) && (num % value == 0)
      arry << value
    end  
    value += 1
  end    
  arry
end 

# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.
# must return true or false depending upon whether the given number is a Narcissistic number.
# For example, take 153 (3 digits): 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153


def dig_number(number)
  arr_dig = number.to_s.chars
  count = arr_dig.size
  arr_dig.map {|dig| dig.to_i ** count} 
end

def narci_number(num)
  sum = dig_number(num)
  return true if num == sum.reduce(:+)
end 



#Let sum_of_proper_divisors(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If we run a number, num1, through the function, we will get num2. What if we run num2 through the function?
#If sum_of_proper_divisors(num1) == num2 AND sum_of_proper_divisors(num2) == num1, where num1 != num2, 
#then num1 and num2 are called amicable numbers. For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
#therefore sum_of_proper_divisors(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so sum_of_properdivisors(284) = 220.
#Evaluate the sum of all the amicable numbers under 10000.

def sum_of_proper_divisors(n)

  sum_factor1 = factors_numbers(n).reduce(:+)
  number2 = sum_factor1
  sum_factor2 = factors_numbers(number2).reduce(:+)
  if (n == sum_factor2) && (number2 == sum_factor1) && (n != number2)
    return "Yes, amicable with #{number2}"   
  else
    "No"
  end    

end  

def factors_numbers(number)
  arry_factor = []

  (1...number).each do |num|
    if (number % num == 0)
      arry_factor << num
    end  
  end
  arry_factor  
end  


#Count the palindromes. Determine how many palindromes are in a string. 
#Order of the string must be preserved. A palindrome is a string that is the same 
#characters reading it forwards as reading it backwards. Anagram must be of length 3 or more and preserve the given order.
# EX: is_palindrome?("banana") == 2
# there are 2 "ana" anagrams in this example

def is_palindrome?(string)
  counter = 0
  
  if string.length == 0 || string.length == 1
    return counter
  elsif string[0]==string[-1]
    is_palindrome?(string[1..-2])
    counter += 1

  elsif string[0]!=string[-1]
    is_palindrome?(string[1..-1])    

  else
    false
  end     
end



#You have a hash of keys that are users and values that are hashes of their movie ratings (also in the form of a hash).
#The user’s movie ratings are also in a hash of key value pairs of movie names and ratings
#from 1 to 10. Create a hash containing the average ratings for each movies generated from the ratings made by all the users in the input.
#avg_movie_ratings(user_ratings) == {"Avengers"=>6.8, "Little Mermaid"=>6.0, "Inception"=>8.4, "Independence Day"=>6.5}


def avg_movie_ratings(user_ratings)
  sum_rating = Hash.new(0)
  counter_hash = Hash.new(0)
  ave_rating = Hash.new(0)

  user_ratings.each_value do |hash_value|
    hash_value.each do |film_name, raiting|
      sum_rating[film_name] += raiting
      counter_hash[film_name] += 1
    end
  end
  sum_rating.each do |movie, sum|
    ave_rating[movie] = sum.to_f / counter_hash[movie]
  end  

  ave_rating
end 
   



def avg_movie_ratings(user_ratings)
  result_hash = {}

  user_ratings.each_value do |hash_value|
    hash_value.each do |film_name, raiting|
       result_hash[film_name] ||= [0,0]
       result_hash[film_name][0] += raiting
       result_hash[film_name][1] += 1
    end

  end

  result_hash.each do |movie, values|
    result_hash[movie] = values[0].to_f/values[1]
  end 
  result_hash
end


# Define a method that accepts two arguments, a string and an integer. The method should return 
#a copy of the string with the nth letter removed.
def remove_nth_letter(string, n)
  string[0..n-1] + string[n+1..-1]
end

# Define a method that chunks an array into a nested array of sub-arrays of length n. The last array may be of 
#length less than n if the original array's size does not divide evenly by n.
# chunk([1,2,3,4,5], 2) => [[1,2], [3,4], [5]]

def chunk(array, n)
  arr_result = []
  sub_arr = []
  i = 0
  while i < array.length
    num = array[i]
    
    if sub_arr.length == n
      arr_result << sub_arr
      sub_arr = []
    end  
    sub_arr << num

    i += 1
  end
  arr_result << sub_arr
  arr_result
end 

# Define a method that multiplies the frequencies of the periods, commas, hyphens, semicolons, question marks, 
#and exclamation points in a given string and returns the product. If any punctuation does not occur, don't include it 
#in the product, i.e., don't multiply by zero!
def product_punctuation(str)
	sign_str = "!.,-;?"
	result = 1

	if str == sign_str
		return result
	end	

	numbers_sign = str.each_char.count {|elem| sign_str.include?(elem)}
	result *= numbers_sign
	 
end

# Translate a sentence into pig-latin! The first consonants go to the end of the word, then add "ay".
def pig_latin(sentence)
  
  words = sentence.split
  result = words.map do |word|
  	latinize(word)
  end
  result.join(" ")
end  	
  				

  


def latinize(word)
	vowels = ["a","e","i","o","u"]
	alpha =('a'..'z').to_a
  	consonants = (alpha - vowels).join

		if vowels.include?(word[0])
			word += "ay"
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			word[3..-1]+ word[0..2]+ "ay" 

		elsif consonants.include?(word[0]) && consonants.include?(word[1])
			word[2..-1] + word[0..1] + "ay"
		else
			word[1..-1] + word[0] + "ay"

		end		
 
end 


$success_count = 0
$failure_count = 0

def deep_dup(arr)
  arr.inject([]) { |acc, el| el.is_a?(Array) ? acc << deep_dup(el) : acc << el }
end

def note_success(returned, invocation, expectation)
  puts "success: #{invocation} => #{expectation}"
  $success_count += 1
end

def note_failure(returned, invocation, expectation)
  puts "failure: #{invocation}: expected #{expectation}, returned #{returned}"
  $failure_count += 1
end

def format_args(args)
  o_args = deep_dup(args)
  o_args.map! do |arg|
    arg = prettify(arg)
    arg.class == Array ? arg.to_s : arg
  end
  o_args.join(', ')
end

def prettify(statement)
  case statement
  when Float
    statement.round(5)
  when String
    "\"#{statement}\""
  when NilClass
    "nil"
  else
    statement
  end
end

def equality_test(returned, invocation, expectation)
  if returned == expectation && returned.class == expectation.class
    note_success(returned, invocation, expectation)
  else
    note_failure(returned, invocation, expectation)
  end
end

def identity_test(returned, invocation, expectation, args)
  if returned.__id__ == args[0].__id__
    equality_test(returned, invocation, expectation)
  else
    puts "failure: #{invocation}: You did not mutate the original array!"
    $failure_count += 1
  end
end

def method_missing(method_name, *args)
  method_name = method_name.to_s
  expectation = args[-1]
  args = args[0...-1]
  if method_name.start_with?("test_")
    tested_method = method_name[5..-1]
    print_test(tested_method, args, expectation)
  else
    method_name = method_name.to_sym
    super
  end
end

def print_test(method_name, args, expectation)
  returned = self.send(method_name, *args)
  returned = prettify(returned)
  expectation = prettify(expectation)
  args_statement = format_args(args)
  invocation = "#{method_name}(#{args_statement})"
  method_name.include?("!") ? identity_test(returned, invocation, expectation, args) : equality_test(returned, invocation, expectation)
  rescue Exception => e
    puts "failure: #{invocation} threw #{e}"
    puts e.backtrace.select {|t| !t.include?("method_missing") && !t.include?("print_test")}
    $failure_count += 1
end




puts "\wnth_prime:\n" + "*" * 15 + "\n"
test_nth_prime(6, 13)
test_nth_prime(10, 29)
puts "\wlargest_factor:\n" + "*" * 15 + "\n"
test_largest_factor(13195, 29)
test_largest_factor(3195, 71)
puts "\wnarci_numbe:\n" + "*" * 15 + "\n"
test_narci_number(153, true)
test_narci_number(1634, true)
puts "\wsum_of_proper_divisors:\n" + "*" * 15 + "\n"
test_sum_of_proper_divisors(220, "Yes, amicable with 284")
test_sum_of_proper_divisors(1184, "Yes, amicable with 1210")
puts "\wavg_movie_ratings:\n" + "*" * 15 + "\n"
test_avg_movie_ratings({
   "Ryan" => {"Avengers" => 8, "Little Mermaid" => 8, "Inception" => 9},
   "Clay" => {"Avengers" => 9, "Inception" => 10, "Independence Day" => 7},
   "Christine" => {"Avengers" => 9, "Little Mermaid" => 8, "Inception" => 7},
   "Jon" => {"Avengers" => 5, "Little Mermaid" => 2, "Inception" => 8},
   "David" => {"Avengers" => 3, "Inception" => 8, "Independence Day" => 6}
  }, {"Avengers"=>6.8, "Little Mermaid"=>6.0, "Inception"=>8.4, "Independence Day"=>6.5})
puts "\wremove_nth_letter:\n" + "*" * 15 + "\n"
test_remove_nth_letter("helloworld", 5, "helloorld")
test_remove_nth_letter("helloworld", -3, "hellowold")
puts "\wchunk:\n" + "*" * 15 + "\n"
test_chunk([1,2,3,4,5], 2, [[1,2], [3,4], [5]])
test_chunk([1, 8, 9, 4, "hey", "there"], 2, [[1, 8], [9, 4], ["hey", "there"]])
puts "\wproduct_punctuation:\n" + "*" * 15 + "\n"
test_product_punctuation("!.,-;?", 1)
test_product_punctuation("There's a certain Slant of light, Winter Afternoons - That oppresses, like the Heft Of Cathedral Tunes - ", 4)
puts "\wpig_latin:\n" + "*" * 15 + "\n"
test_pig_latin("i speak pig latin", "iay eakspay igpay atinlay")
test_pig_latin("throw me an aardvark", "owthray emay anay aardvarkay")
puts
puts "TOTAL CORRECT: #{$success_count} / #{$success_count + $failure_count}"
puts "TOTAL FAILURES: #{$failure_count}"
$success_count = 0
$failure_count = 0

