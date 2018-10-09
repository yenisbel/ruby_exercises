def reverser
	sentence = yield
	words = sentence.split(' ')
	result = ''
	
	words.each_with_index do |word, i|
	   if i > 0
	   	result += " "
	   end	
	   result += word_reverse(word)
	end
    result
end


def word_reverse(word)
	reversed = ''
	i = 0
  	while i < word.length do
    	reversed = word[i] + reversed
    	i += 1
  	end

  return reversed
end	

def adder(number = 1)
  number + yield   
end


def repeater(repeat = 1)
  repeat.times do
	 yield
  end
end
