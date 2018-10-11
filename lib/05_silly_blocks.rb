
def reverser
	sentence = yield
	words = sentence.split
	result = words.map do |word|
		reversed_word(word)
	end
	result.join(' ')	
	
end

def reversed_word(word)
	reversed = ""
	i = 0
	while i < word.length
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
