class ::Fixnum
  	# attr_accessor :single_digit_hash

  	def initialize
    	
  	end
	
  	def in_words
  		single_digit_hash = {
    		0 => "zero",
      		1 => "one",
      		2 => "two",
      		3 => "three",
      		4 => "four",
      		5 => "five",
      		6 => "six",
      		7 => "seven",
      		8 => "eight",
      		9 => "nine"
    	}

    	tens_digit_hash = {
      		1 => "ten",
      		2 => "twenty",
      		3 => "thirty",
      		4 => "forty",
      		5 => "fifty",
      		6 => "sixty",
      		7 => "seventy",
      		8 => "eighty",
      		9 => "ninety"
    	}

    	teens_digit_hash = {
      		1 => "eleven",
      		2 => "twelve",
      		3 => "thirteen",
      		4 => "fourteen",
      		5 => "fifteen",
      		6 => "sixteen",
      		7 => "seventeen",
      		8 => "eighteen",
      		9 => "nineteen"
    	}

      if self < 10 
	   	   single_digit_hash[self]
	     elsif self > 10 && self < 20
         teens_digit_hash[self - 10]
	     elsif self >= 10 && self < 100 && (self % 10 == 0)
	   	   tens_digit_hash[self / 10]
	     elsif self >= 10 && self < 100 && (self % 10 != 0)
          tens, ones = self.to_s.chars
          "#{tens_digit_hash[tens.to_i]} #{single_digit_hash[ones.to_i]}"
       elsif self >= 100 && self < 1000 && (self % 100 == 0)
          hundreds = self.to_s.chars[0]
          "#{single_digit_hash[hundreds.to_i]} hundred"        
	     elsif self > 100 && self < 1000
          hundreds, tens, ones = self.to_s.chars

          # if teens_digit_hash.include?(tens, ones)
          #   "#{single_digit_hash[hundreds.to_i]} hundred #{teens_digit_hash}"
          # else  
          "#{single_digit_hash[hundreds.to_i]} hundred #{tens_digit_hash[tens.to_i]} #{single_digit_hash[ones.to_i]}"
        
	   end

  	end
 
end
